/* Nessus Attack Scripting Language
 *
 * Copyright (C) 2002 - 2004 Tenable Network Security
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
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 *
 */

/**
 * @file nasl_host.c
 *
 * @brief Remote host helper functions.
 *
 * This file contains all the functions which deal with the remote
 * host: which ports are open, what is its IP, what is our IP, what
 * transport is on the remote port, and so on...
 */

#include <arpa/inet.h>          /* for inet_aton */
#include <netdb.h>              /* for gethostbyaddr */
#include <netinet/in.h>         /* for in_addr */
#include <string.h>             /* for strlen */
#include <unistd.h>             /* for gethostname */

#include "network.h"
#include "../base/openvas_networking.h"
#include "plugutils.h"          /* for plug_get_host_fqdn */
#include "system.h"             /* for estrdup */
#include "pcap_openvas.h"       /* for v6_is_local_ip */

#include "nasl_tree.h"
#include "nasl_global_ctxt.h"
#include "nasl_func.h"
#include "nasl_var.h"
#include "nasl_lex_ctxt.h"
#include "nasl_debug.h"

#include "nasl_host.h"

tree_cell *
get_hostname (lex_ctxt * lexic)
{
  struct arglist *script_infos = lexic->script_infos;
  char *hostname = (char *) plug_get_host_fqdn (script_infos);
  tree_cell *retc;

  if (hostname == NULL)
    return NULL;

  retc = alloc_tree_cell (0, NULL);
  retc->type = CONST_STR;
  retc->size = strlen (hostname);
  retc->x.str_val = estrdup (hostname);
  return retc;
}


tree_cell *
get_host_ip (lex_ctxt * lexic)
{
  struct arglist *script_infos = lexic->script_infos;
  struct in6_addr *ip = plug_get_host_ip (script_infos);
  char *txt_ip;
  tree_cell *retc;
  struct in_addr inaddr;
  char name[512];

  if (ip == NULL)               /* WTF ? */
    {
      return FAKE_CELL;
    }

  inaddr.s_addr = ip->s6_addr32[3];
  retc = alloc_tree_cell (0, NULL);
  retc->type = CONST_STR;
  if (IN6_IS_ADDR_V4MAPPED (ip))
    {
      txt_ip = estrdup (inet_ntoa (inaddr));
    }
  else
    {
      txt_ip = estrdup (inet_ntop (AF_INET6, ip, name, sizeof (name)));
    }
  retc->x.str_val = txt_ip;
  retc->size = strlen (retc->x.str_val);

  return retc;
}


tree_cell *
get_host_open_port (lex_ctxt * lexic)
{
  struct arglist *script_infos = lexic->script_infos;
  unsigned int port = plug_get_host_open_port (script_infos);
  tree_cell *retc;

  retc = alloc_tree_cell (0, NULL);
  retc->type = CONST_INT;
  retc->x.i_val = port;

  return retc;
}


tree_cell *
get_port_state (lex_ctxt * lexic)
{
  int open;
  struct arglist *script_infos = lexic->script_infos;
  tree_cell *retc;
  int port;

  port = get_int_var_by_num (lexic, 0, -1);
  if (port < 0)
    return FAKE_CELL;

  retc = alloc_tree_cell (0, NULL);
  retc->type = CONST_INT;
  open = host_get_port_state (script_infos, port);
  retc->x.i_val = open;
  return retc;
}

tree_cell *
get_udp_port_state (lex_ctxt * lexic)
{
  int open;
  struct arglist *script_infos = lexic->script_infos;
  tree_cell *retc;
  int port;

  port = get_int_var_by_num (lexic, 0, -1);
  if (port < 0)
    return FAKE_CELL;

  retc = alloc_tree_cell (0, NULL);
  retc->type = CONST_INT;
  open = host_get_port_state_udp (script_infos, port);
  retc->x.i_val = open;
  return retc;
}


tree_cell *
nasl_islocalhost (lex_ctxt * lexic)
{
  struct arglist *script_infos = lexic->script_infos;
  struct in6_addr *dst = plug_get_host_ip (script_infos);
  tree_cell *retc;

  retc = alloc_tree_cell (0, NULL);
  retc->type = CONST_INT;
  retc->x.i_val = v6_islocalhost (dst);
  return retc;
}


tree_cell *
nasl_islocalnet (lex_ctxt * lexic)
{
  struct arglist *script_infos = lexic->script_infos;
  struct in6_addr *ip = plug_get_host_ip (script_infos);
  tree_cell *retc;

  retc = alloc_tree_cell (0, NULL);
  retc->type = CONST_INT;
  retc->x.i_val = v6_is_local_ip (ip);
  return retc;
}


tree_cell *
nasl_this_host (lex_ctxt * lexic)
{
  struct arglist *script_infos = lexic->script_infos;
  tree_cell *retc;
  struct in6_addr addr;
  char hostname[255];
  char *ret;
  struct in6_addr *ia = plug_get_host_ip (script_infos);
  struct in6_addr in6addr;
  struct in_addr inaddr;
  struct in6_addr src6;

  retc = alloc_tree_cell (0, NULL);
  retc->type = CONST_DATA;

  if (openvas_source_iface_is_set ())
    {
      /* Use source_iface's IP address when available. */
      if (IN6_IS_ADDR_V4MAPPED (ia))
        {
          openvas_source_addr_as_addr6 (&addr);
          inaddr.s_addr = addr.s6_addr32[3];
          retc->x.str_val =
            estrdup (inet_ntop (AF_INET, &inaddr, hostname, sizeof (hostname)));
        }
      else
        {
          openvas_source_addr6 (&addr);
          retc->x.str_val =
            estrdup (inet_ntop (AF_INET6, &addr, hostname, sizeof (hostname)));
        }
      retc->size = strlen (retc->x.str_val);
      return retc;
    }
  else
    {
      /* Manually find the source IP that will be used. */
      int err = 1;
      if (v6_islocalhost (ia))
        memcpy (&src6, ia, sizeof (struct in6_addr));
      else
        err = v6_getsourceip (&src6, ia);

      if (err && !IN6_ARE_ADDR_EQUAL (&src6, &in6addr_any))
        {
          char *ret;

          if (IN6_IS_ADDR_V4MAPPED (&src6))
            {
              inaddr.s_addr = src6.s6_addr32[3];
              ret =
                estrdup (inet_ntop
                         (AF_INET, &inaddr, hostname, sizeof (hostname)));
            }
          else
            ret =
              estrdup (inet_ntop
                       (AF_INET6, &src6, hostname, sizeof (hostname)));

          retc->x.str_val = ret;
          retc->size = strlen (ret);

          return retc;
        }

      hostname[sizeof (hostname) - 1] = '\0';
      gethostname (hostname, sizeof (hostname) - 1);
      if (openvas_resolve_as_addr6 (hostname, &in6addr))
        {
          if (IN6_IS_ADDR_V4MAPPED (&in6addr))
            {
              inaddr.s_addr = in6addr.s6_addr32[3];
              ret = estrdup (inet_ntop (AF_INET, &inaddr, hostname,
                                        sizeof (hostname)));
            }
          else
            ret = estrdup (inet_ntop (AF_INET6, &in6addr, hostname,
                                      sizeof (hostname)));
          retc->x.str_val = ret;
          retc->size = strlen (ret);
        }
    }
  return retc;
}


tree_cell *
nasl_this_host_name (lex_ctxt * lexic)
{
  char *hostname;
  tree_cell *retc;

  retc = alloc_tree_cell (0, NULL);
  retc->type = CONST_DATA;

  hostname = emalloc (256);
  gethostname (hostname, 255);

  retc->x.str_val = hostname;
  retc->size = strlen (hostname);
  return retc;
}


/**
 * @brief Return the encapsulation mode of a port.
 * @naslfn{get_port_transport}
 *
 * Takes a port number and returns its encapsulation mode (ENCAPS_*)
 * The defined encapsulation modes are:
 *          - @a ENCAPS_AUTO   Automatic encapsulation detection.
 *          - @a ENCAPS_IP     No encapsulation
 *          - @a ENCAPS_SSLv23 Request compatibility options
 *          - @a ENCAPS_SSLv2  SSL version 2
 *          - @a ENCAPS_SSLv3  SSL version 3
 *          - @a ENCAPS_TLSv1  TLS version 1.0
 *          - @a ENCAPS_TLSv11 TLS version 1.1
 *          - @a ENCAPS_TLSv12 TLS version 1.2
 *          - @a ENCAPS_TLScustom SSL or TLS with custom priorities
 *
 * @nasluparam
 *
 * - An integer with the port number.
 *
 * @naslnparam
 *
 * -@a asstring If not 0 return a human readabale string instead of
 *   an integer.
 *
 * @naslret An integer or a string with the encapsulation mode or NULL
 * on error.
 *
 * @param[in] lexic  Lexical context of the NASL interpreter.
 *
 * @return A tree cell.
 */
tree_cell *
get_port_transport (lex_ctxt * lexic)
{
  struct arglist *script_infos = lexic->script_infos;
  tree_cell *retc;
  int port = get_int_var_by_num (lexic, 0, -1);

  if (port >= 0)
    {
      int trp = plug_get_port_transport (script_infos, port);

      retc = alloc_tree_cell (0, NULL);
      if (get_int_local_var_by_name (lexic, "asstring", 0))
        {
          const char *s = get_encaps_name (trp);
          retc->type = CONST_STR;
          retc->x.str_val = estrdup (s);
          retc->size = strlen (s);
        }
      else
        {
          retc->type = CONST_INT;
          retc->x.i_val = trp;
        }
      return retc;
    }
  return NULL;
}


tree_cell *
nasl_same_host (lex_ctxt * lexic)
{
  tree_cell *retc;
  struct hostent *h;
  char *hn[2], **names[2];
  struct in_addr ia, *a[2];
  int i, j, n[2], names_nb[2], flag;
  int cmp_hostname = get_int_local_var_by_name (lexic, "cmp_hostname", 0);

  for (i = 0; i < 2; i++)
    {
      hn[i] = get_str_var_by_num (lexic, i);
      if (hn[i] == NULL)
        {
          nasl_perror (lexic, "same_host needs two parameters!\n");
          return NULL;
        }
      if (strlen (hn[i]) >= 256)
        {
          nasl_perror (lexic, "same_host(): Too long hostname !\n");
          return NULL;
        }
    }
  for (i = 0; i < 2; i++)
    {
      if (!inet_aton (hn[i], &ia))      /* Not an IP address */
        {
          h = gethostbyname (hn[i]);
          if (h == NULL)
            {
              nasl_perror (lexic, "same_host: %s does not resolve\n", hn[i]);
              n[i] = 0;
              if (cmp_hostname)
                {
                  names_nb[i] = 1;
                  names[i] = emalloc (sizeof (char *));
                  names[i][0] = estrdup (hn[i]);
                }
            }
          else
            {
              for (names_nb[i] = 0; h->h_aliases[names_nb[i]] != NULL;
                   names_nb[i]++)
                ;
              names_nb[i]++;
              names[i] = emalloc (sizeof (char *) * names_nb[i]);
              names[i][0] = estrdup (h->h_name);
              for (j = 1; j < names_nb[i]; j++)
                names[i][j] = estrdup (h->h_aliases[j - 1]);

              /* Here, we should check that h_addrtype == AF_INET */
              for (n[i] = 0; ((struct in_addr **) h->h_addr_list)[n[i]] != NULL;
                   n[i]++)
                ;
              a[i] = emalloc (h->h_length * n[i]);
              for (j = 0; j < n[i]; j++)
                a[i][j] = *((struct in_addr **) h->h_addr_list)[j];
            }
        }
      else
        {
          if (cmp_hostname)
            h = gethostbyaddr ((const char *) &ia, sizeof (ia), AF_INET);
          else
            h = NULL;
          if (h == NULL)
            {
              a[i] = emalloc (sizeof (struct in_addr));
              memcpy (a[i], &ia, sizeof (struct in_addr));
              n[i] = 1;
            }
          else
            {
              for (names_nb[i] = 0; h->h_aliases[names_nb[i]] != NULL;
                   names_nb[i]++)
                ;
              names_nb[i]++;
              names[i] = emalloc (sizeof (char *) * names_nb[i]);
              names[i][0] = estrdup (h->h_name);
              for (j = 1; j < names_nb[i]; j++)
                names[i][j] = estrdup (h->h_aliases[j - 1]);

              /* Here, we should check that h_addrtype == AF_INET */
              for (n[i] = 0; ((struct in_addr **) h->h_addr_list)[n[i]] != NULL;
                   n[i]++)
                ;
              a[i] = emalloc (h->h_length * n[i]);
              for (j = 0; j < n[i]; j++)
                a[i][j] = *((struct in_addr **) h->h_addr_list)[j];
            }
        }
    }
  flag = 0;
  for (i = 0; i < n[0] && !flag; i++)
    for (j = 0; j < n[1] && !flag; j++)
      if (a[0][i].s_addr == a[1][j].s_addr)
        {
          flag = 1;
        }

  if (cmp_hostname)
    for (i = 0; i < names_nb[0] && !flag; i++)
      for (j = 0; j < names_nb[1] && !flag; j++)
        if (strcmp (names[0][i], names[1][j]) == 0)
          {
            flag = 1;
          }

  retc = alloc_typed_cell (CONST_INT);
  retc->x.i_val = flag;

  for (i = 0; i < 2; i++)
    efree (&a[i]);
  if (cmp_hostname)
    {
      for (i = 0; i < 2; i++)
        for (j = 0; j < names_nb[i]; j++)
          efree (&names[i][j]);
      efree (&names[i]);
    }
  return retc;
}

tree_cell *
nasl_target_is_ipv6 (lex_ctxt * lexic)
{
  tree_cell *retc;
  struct arglist *script_infos = lexic->script_infos;
  struct in6_addr *addr;

  addr = plug_get_host_ip (script_infos);
  retc = alloc_tree_cell (0, NULL);
  retc->type = CONST_INT;

  if (addr == NULL)
    {
      nasl_perror (lexic, "address is NULL!\n");
      return NULL;
    }
  if (IN6_IS_ADDR_V4MAPPED (addr) == 1)
    retc->x.i_val = 0;
  else
    retc->x.i_val = 1;

  return retc;
}
