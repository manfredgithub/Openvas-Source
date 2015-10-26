# OpenVAS
# $Id$
# Description: Top-level cmake control for openvas-cli.
#
# Authors:
# Matthew Mundell <matthew.mundell@intevation.de>
#
# Copyright:
# Copyright (C) 2010 Greenbone Networks GmbH
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2,
# or, at your option, any later version as published by the Free
# Software Foundation
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.

message ("-- Configuring openvas-cli ...")

project (openvas-cli C)

cmake_minimum_required (VERSION 2.6)

if (POLICY CMP0005)
  cmake_policy (SET CMP0005 OLD)
endif (POLICY CMP0005)

include (FindPkgConfig)

if (NOT CMAKE_BUILD_TYPE)
  set (CMAKE_BUILD_TYPE Debug)
endif (NOT CMAKE_BUILD_TYPE)

## Retrieve svn revision (at configure time)
#  Not using Subversion_WC_INFO, as it would have to connect to the repo
find_program (SVN_EXECUTABLE svn DOC "subversion command line client")

macro (Subversion_GET_REVISION dir variable)
  execute_process (COMMAND ${SVN_EXECUTABLE} info ${CMAKE_SOURCE_DIR}/${dir}
    OUTPUT_VARIABLE ${variable}
    OUTPUT_STRIP_TRAILING_WHITESPACE)
  string (REGEX REPLACE "^(.*\n)?Revision: ([^\n]+).*"
    "\\2" ${variable} "${${variable}}")
endmacro (Subversion_GET_REVISION)

if (NOT CMAKE_BUILD_TYPE MATCHES "Release")
  if (EXISTS "${CMAKE_SOURCE_DIR}/.svn/")
    if (SVN_EXECUTABLE)
      Subversion_GET_REVISION(. ProjectRevision)
      set (SVN_REVISION ".SVN.r${ProjectRevision}")
    else (SVN_EXECUTABLE)
      set (SVN_REVISION ".SVN")
    endif (SVN_EXECUTABLE)
  endif (EXISTS "${CMAKE_SOURCE_DIR}/.svn/")
endif (NOT CMAKE_BUILD_TYPE MATCHES "Release")

## CPack configuration

set (CPACK_CMAKE_GENERATOR "Unix Makefiles")
set (CPACK_GENERATOR "TGZ")
set (CPACK_INSTALL_CMAKE_PROJECTS ".;openvas-cli;ALL;/")
set (CPACK_MODULE_PATH "")
set (CPACK_RESOURCE_FILE_LICENSE "${CMAKE_SOURCE_DIR}/COPYING")
set (CPACK_RESOURCE_FILE_README "${CMAKE_SOURCE_DIR}/README")
set (CPACK_RESOURCE_FILE_WELCOME "${CMAKE_SOURCE_DIR}/README")
set (CPACK_SOURCE_GENERATOR "TGZ")
set (CPACK_SOURCE_TOPLEVEL_TAG "")
set (CPACK_SYSTEM_NAME "")
set (CPACK_TOPLEVEL_TAG "")
set (CPACK_PACKAGE_VERSION_MAJOR "1")
set (CPACK_PACKAGE_VERSION_MINOR "3")

# Use this scheme for stable releases:
set (CPACK_PACKAGE_VERSION_PATCH "1${SVN_REVISION}")
set (CPACK_PACKAGE_VERSION "${CPACK_PACKAGE_VERSION_MAJOR}.${CPACK_PACKAGE_VERSION_MINOR}.${CPACK_PACKAGE_VERSION_PATCH}")
# Use this scheme for +betaN and +rcN releases:
#set (CPACK_PACKAGE_VERSION_PATCH "+beta1${SVN_REVISION}")
#set (CPACK_PACKAGE_VERSION "${CPACK_PACKAGE_VERSION_MAJOR}.${CPACK_PACKAGE_VERSION_MINOR}${CPACK_PACKAGE_VERSION_PATCH}")

set (CPACK_PACKAGE_FILE_NAME "${PROJECT_NAME}-${CPACK_PACKAGE_VERSION}")
set (CPACK_SOURCE_PACKAGE_FILE_NAME "${PROJECT_NAME}-${CPACK_PACKAGE_VERSION}")
set (CPACK_PACKAGE_VENDOR "The OpenVAS Project")
set (CPACK_SOURCE_IGNORE_FILES
"/.svn/"
"/.hg/"
"/.git/"
"/_CPack_Packages/"
"/CMakeFiles/"
"cmake$"
"swp$"
"Cache.txt$"
".tar.gz"
"install_manifest.txt"
"Makefile"
"/doc/generated/"
"Doxyfile$"
"Doxyfile_full$"
"VERSION$"
)

include (CPack)

## Variables

if (SYSCONF_INSTALL_DIR)
  set (SYSCONFDIR "${SYSCONF_INSTALL_DIR}")
endif (SYSCONF_INSTALL_DIR)

if (NOT SYSCONFDIR)
  set (SYSCONFDIR "${CMAKE_INSTALL_PREFIX}/etc")
endif (NOT SYSCONFDIR)

if (NOT EXEC_PREFIX)
  set (EXEC_PREFIX "${CMAKE_INSTALL_PREFIX}")
endif (NOT EXEC_PREFIX)

if (NOT BINDIR)
  set (BINDIR "${EXEC_PREFIX}/bin")
endif (NOT BINDIR)

if (NOT SBINDIR)
  set (SBINDIR "${EXEC_PREFIX}/sbin")
endif (NOT SBINDIR)

if (NOT LIBDIR)
  set (LIBDIR "${EXEC_PREFIX}/lib")
endif (NOT LIBDIR)

if (NOT LOCALSTATEDIR)
  set (LOCALSTATEDIR "${CMAKE_INSTALL_PREFIX}/var")
endif (NOT LOCALSTATEDIR)

if (NOT DATADIR)
  set (DATADIR "${CMAKE_INSTALL_PREFIX}/share")
endif (NOT DATADIR)

if (NOT INCLUDEDIR)
  set (INCLUDEDIR "${CMAKE_INSTALL_PREFIX}/include")
endif (NOT INCLUDEDIR)

message ("-- Install prefix: ${CMAKE_INSTALL_PREFIX}")

## Dependency checks
##
## TODO Also check for headers where needed.
## Improve for workflow: First collect list of missing libs, then print the
## list and throw an error, otherwise long install-cmake-install-cmake cycles
## might occur.

pkg_check_modules (LIBOPENVAS REQUIRED libopenvas>=7.0.0)
pkg_check_modules (GNUTLS REQUIRED gnutls>=2.8)
pkg_check_modules (GLIB REQUIRED glib-2.0)

execute_process (COMMAND pkg-config --cflags glib-2.0
  OUTPUT_VARIABLE GLIB_CFLAGS
  OUTPUT_STRIP_TRAILING_WHITESPACE)
execute_process (COMMAND pkg-config --libs glib-2.0
  OUTPUT_VARIABLE GLIB_LDFLAGS
  OUTPUT_STRIP_TRAILING_WHITESPACE)

if (BUILD_STATIC_NAGIOS OR BUILD_STATIC_OMP)
  execute_process (COMMAND pkg-config --static --cflags gnutls
    OUTPUT_VARIABLE GNUTLS_CFLAGS
    OUTPUT_STRIP_TRAILING_WHITESPACE)
  execute_process (COMMAND pkg-config --static --libs gnutls
    OUTPUT_VARIABLE GNUTLS_LDFLAGS
    OUTPUT_STRIP_TRAILING_WHITESPACE)

  execute_process (COMMAND pkg-config --static --cflags libopenvas
    OUTPUT_VARIABLE OPENVAS_CFLAGS
    OUTPUT_STRIP_TRAILING_WHITESPACE)
  execute_process (COMMAND pkg-config --static --libs libopenvas
    OUTPUT_VARIABLE OPENVAS_LDFLAGS
    OUTPUT_STRIP_TRAILING_WHITESPACE)
else (BUILD_STATIC_NAGIOS OR BUILD_STATIC_OMP)
 execute_process (COMMAND pkg-config --cflags gnutls
   OUTPUT_VARIABLE GNUTLS_CFLAGS
   OUTPUT_STRIP_TRAILING_WHITESPACE)
 execute_process (COMMAND pkg-config --libs gnutls
   OUTPUT_VARIABLE GNUTLS_LDFLAGS
   OUTPUT_STRIP_TRAILING_WHITESPACE)

  execute_process (COMMAND pkg-config --cflags libopenvas
    OUTPUT_VARIABLE OPENVAS_CFLAGS
    OUTPUT_STRIP_TRAILING_WHITESPACE)
  execute_process (COMMAND pkg-config --libs libopenvas
    OUTPUT_VARIABLE OPENVAS_LDFLAGS
    OUTPUT_STRIP_TRAILING_WHITESPACE)
endif (BUILD_STATIC_NAGIOS OR BUILD_STATIC_OMP)

## Version

string (REPLACE "
" "" OPENVASCLI_VERSION ${CPACK_PACKAGE_VERSION})

# Configure Doxyfile with version number
configure_file (doc/Doxyfile.in doc/Doxyfile)
configure_file (doc/Doxyfile_full.in doc/Doxyfile_full)
configure_file (VERSION.in VERSION)

## Program

if (MINGW)
  set (HARDENING_FLAGS            "-Wformat -Wformat-security -O2 -D_FORTIFY_SOURCE=2")
else (MINGW)
  set (HARDENING_FLAGS            "-Wformat -Wformat-security -O2 -D_FORTIFY_SOURCE=2 -fstack-protector -Wl,-z,relro -Wl,-z,now")
endif (MINGW)

set (CMAKE_C_FLAGS_DEBUG        "${CMAKE_C_FLAGS_DEBUG} -Werror")
set (CMAKE_C_FLAGS              "${CMAKE_C_FLAGS} ${HARDENING_FLAGS} -Wall")

add_subdirectory (omp)
add_subdirectory (nagios)
add_subdirectory (dialog)

## Documentation

add_subdirectory (doc)

## Tests

enable_testing ()

## End
