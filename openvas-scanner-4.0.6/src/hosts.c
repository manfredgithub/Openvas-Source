/* OpenVAS
* $Id: hosts.c 20365 2014-09-11 23:28:15Z kroosec $
* Description: Basically creates a new process for each tested host.
*
* Authors: - Renaud Deraison <deraison@nessus.org> (Original pre-fork develoment)
*          - Tim Brown <mailto:timb@openvas.org> (Initial fork)
*          - Laban Mwangi <mailto:labanm@openvas.org> (Renaming work)
*          - Tarik El-Yassem <mailto:tarik@openvas.org> (Headers section)
*
* Copyright:
* Portions Copyright (C) 2006 Software in the Public Interest, Inc.
* Based on work Copyright (C) 1998 - 2006 Tenable Network Security, Inc.
*
* This program is free software; you can redistribute it and/or modify
* it under the terms of the GNU General Public License version 2,
* as published by the Free Software Foundation
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with this program; if not, write to the Free Software
* Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
*/

#include <stdio.h>    /* for fprintf() */
#include <errno.h>    /* for errno() */
#include <signal.h>   /* for SIGTERM */
#include <sys/wait.h> /* for waitpid() */
#include <string.h>   /* for strlen() */
#include <unistd.h>   /* for close() */

#include <openvas/misc/network.h>      /* for internal_recv */
#include <openvas/misc/internal_com.h> /* for INTERNAL_COMM_MSG_TYPE_CTRL */
#include <openvas/misc/system.h>       /* for estrdup */

#include "utils.h"
#include "log.h"
#include "preferences.h"
#include "hosts.h"
#include "ntp.h"

/**
 * @brief Host information, implemented as doubly linked list.
 */
struct host
{
  char *name;
  int soc;
  int psoc;
  pid_t pid;
  struct host *next;
  struct host *prev;
};
/** @TODO struct hosts could be stripped down and put in a g_list, or,
 *        as a g_hash_table (name -> [soc,psoc,pid]), see hosts_get.*/


static struct host *hosts = NULL;
static int g_soc = -1;
static int g_max_hosts = 15;


static void
sigchld_handler (int sig)
{
  struct host *h = hosts;
  while (h != NULL)
    {
      if (h->pid != 0)
        {
          int e;
          do
            {
              e = waitpid (h->pid, NULL, WNOHANG);
            }
          while (e < 0 && errno == EINTR);
        }
      h = h->next;
    }
}

/*-------------------------------------------------------------------------*/
static int
forward (int in, int out)
{
  static char *buf = NULL;
  static int bufsz = 0;
  int len;
  int type;

  if (internal_recv (in, &buf, &bufsz, &type) < 0)
    return -1;

  if (type & INTERNAL_COMM_MSG_TYPE_CTRL)
    {
      errno = type & ~INTERNAL_COMM_MSG_TYPE_CTRL;
      return -1;
    }
  else if ((type & INTERNAL_COMM_MSG_TYPE_DATA) == 0)
    {
      log_write ("hosts.c:forward(): bad msg type (%d)\n", type);
      return -1;
    }

  len = strlen (buf);

  if (out > 0)
    {
      int n;
      for (n = 0; n < len;)
        {
          int e;
          e = nsend (out, buf + n, len - n, 0);
          if (e < 0 && errno == EINTR)
            continue;
          else if (e <= 0)
            return -1;
          else
            n += e;
        }
    }

  if (bufsz > 65535)
    {
      efree (&buf);
      buf = NULL;
      bufsz = 0;
    }

  return 0;
}


static void
forward_all (int in, int out)
{
  while (forward (in, out) == 0);
}

/*-------------------------------------------------------------------*/


static struct host *
host_rm (struct host *hosts, struct host *h)
{
  if (h->pid != 0)
    waitpid (h->pid, NULL, WNOHANG);
  forward_all (h->soc, g_soc);

  close (h->soc);
  if (h->psoc != 0)
    close (h->psoc);

  if (h->next != NULL)
    h->next->prev = h->prev;

  if (h->prev != NULL)
    h->prev->next = h->next;
  else
    hosts = h->next;

  efree (&h->name);
  efree (&h);
  return hosts;
}

/*-----------------------------------------------------------------*/

/**
 * @brief Returns the number of entries in the global hosts list.
 */
static int
hosts_num ()
{
  struct host *h = hosts;
  int num;

  for (num = 0; h != NULL; num++, h = h->next);

  return num;
}

/**
 * @brief Retrieves a host specified by its name from the global host list.
 */
static struct host *
hosts_get (char *name)
{
  struct host *h = hosts;
  while (h != NULL)
    {
      if (strcmp (h->name, name) == 0)
        return h;
      h = h->next;
    }
  return NULL;
}


int
hosts_init (int soc, int max_hosts)
{
  g_soc = soc;
  g_max_hosts = max_hosts;
  signal (SIGCHLD, sigchld_handler);
  return 0;
}

int
hosts_new (struct arglist *globals, char *name)
{
  struct host *h;
  int soc[2];

  while (hosts_num () >= g_max_hosts)
    {
      if (hosts_read (globals) < 0)
        return -1;
    }

  if (socketpair (AF_UNIX, SOCK_STREAM, 0, soc) < 0)
    return -1;

  h = emalloc (sizeof (struct host));
  h->name = estrdup (name);
  h->pid = 0;
  h->soc = soc[1];
  h->psoc = soc[0];
  if (hosts != NULL)
    hosts->prev = h;
  h->next = hosts;
  h->prev = NULL;
  hosts = h;
  return soc[0];
}


int
hosts_set_pid (char *name, pid_t pid)
{
  struct host *h = hosts_get (name);
  if (h == NULL)
    {
      log_write ("host_set_pid() failed!\n");
      return -1;
    }

  h->pid = pid;
  close (h->psoc);              /* Close the socket used by our son */
  h->psoc = 0;
  return 0;
}

/*-----------------------------------------------------------------*/
int
hosts_stop_host (char *name)
{
  struct host *h = hosts_get (name);
  if (h == NULL)
    return -1;

  shutdown (h->soc, 2);
  kill (h->pid, SIGTERM);
  waitpid (h->pid, NULL, 0);
  hosts = host_rm (hosts, h);
  return 0;
}

void
hosts_stop_all ()
{
  while (hosts != NULL)
    {
      hosts_stop_host (hosts->name);
    }
}

/*-----------------------------------------------------------------*/

/**
 * @brief Pause all hosts.
 */
void
hosts_pause_all ()
{
  struct host *host = hosts;
  while (host != NULL)
    {
      kill (host->pid, SIGUSR1);
      host = host->next;
    }
}

/**
 * @brief Resume all hosts.
 */
void
hosts_resume_all ()
{
  struct host *host = hosts;
  while (host != NULL)
    {
      kill (host->pid, SIGUSR2);
      host = host->next;
    }
}

/*-----------------------------------------------------------------*/

static int
hosts_read_data ()
{
  fd_set rd;
  struct timeval tv;
  int max = -1;
  struct host *h = hosts;
  int e;
  int ret = 0;

  waitpid (-1, NULL, WNOHANG);

  if (h == NULL)
    return 0;

  FD_ZERO (&rd);
  while (h != NULL)
    {
      if (kill (h->pid, 0) < 0) /* Process is dead */
        {
          hosts = host_rm (hosts, h);
          h = hosts;
        }
      else
        {
          FD_SET (h->soc, &rd);
          if (h->soc > max)
            max = h->soc;
          h = h->next;
        }
    }

  for (;;)
    {
      tv.tv_sec = 0;
      tv.tv_usec = 10000;
      e = select (max + 1, &rd, NULL, NULL, &tv);

      if (e < 0 && errno == EINTR)
        continue;
      else
        break;
    }

  if (e <= 0)
    return -1;

  h = hosts;
  while (h != NULL)
    {
      if (FD_ISSET (h->soc, &rd) != 0)
        {
          if ((data_left (h->soc) != 0)
              && (forward (h->soc, g_soc) == 0))
            ret++;
        }
      h = h->next;
    }

  return ret;
}

/**
 * Returns -1 if no socket, error or client asked to stop tests, 0 otherwise.
 */
static int
hosts_read_client (struct arglist *globals)
{
  struct timeval tv;
  int e;
  fd_set rd;
  int rsoc;

  if (g_soc == -1)
    return 0;


  rsoc = openvas_get_socket_from_connection (g_soc);
  if (rsoc == -1)
    return -1;

  FD_ZERO (&rd);
  FD_SET (rsoc, &rd);

  for (;;)
    {
      tv.tv_sec = 0;
      tv.tv_usec = 1000;
      e = select (rsoc + 1, &rd, NULL, NULL, &tv);
      if (e < 0 && errno == EINTR)
        continue;
      else
        break;
    }

  if (e > 0 && FD_ISSET (rsoc, &rd) != 0)
    {
      int f, n;
      char buf[4096];
      n = recv_line (g_soc, buf, sizeof (buf) - 1);
      if (n <= 0)
        return -1;

      f = ntp_parse_input (globals, buf);
      if (f == NTP_STOP_WHOLE_TEST)
        return -1;
      else if (f == NTP_PAUSE_WHOLE_TEST)
        hosts_pause_all ();
      else if (f == NTP_RESUME_WHOLE_TEST)
        hosts_resume_all ();
    }

  return 0;
}

/**
 * @brief Returns -1 if client asked to stop all tests or connection was lost or error.
 *        0 otherwise.
 */
int
hosts_read (struct arglist *globals)
{
  if (hosts_read_client (globals) < 0)
    {
      hosts_stop_all ();
      log_write ("Client abruptly closed the communication");
      return -1;
    }

  if (hosts == NULL)
    return -1;

  hosts_read_data ();

  return 0;
}
