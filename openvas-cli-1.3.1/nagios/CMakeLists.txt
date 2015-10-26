# OpenVAS
# $Id$
# Description: CMakefile for the OpenVAS CLI program omp
#
# Authors:
# Matthew Mundell <matthew.mundell@intevation.de>
#
# Copyright:
# Copyright (C) 2009, 2010 Greenbone Networks GmbH
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

## Config

if (OPENVAS_HEADER_INSTALL_DIR)
  set (HEADER_TEMP "-I${OPENVAS_HEADER_INSTALL_DIR}")
else (OPENVAS_HEADER_INSTALL_DIR)
  set (HEADER_TEMP "")
endif (OPENVAS_HEADER_INSTALL_DIR)

if (OPENVAS_LIB_INSTALL_DIR)
  set (LIB_TEMP "-L${OPENVAS_LIB_INSTALL_DIR}")
else (OPENVAS_LIB_INSTALL_DIR)
  set (LIB_TEMP "")
endif (OPENVAS_LIB_INSTALL_DIR)

## Program

# FIXME: Find out how to install to nagios plugins directory.
add_executable (check_omp check_omp.c)

set_target_properties (check_omp PROPERTIES LINKER_LANGUAGE C)

if (OPENVASCLI_VERSION)
  add_definitions (-DOPENVASCLI_VERSION=\\\"${OPENVASCLI_VERSION}\\\")
endif (OPENVASCLI_VERSION)

add_definitions (-DOPENVAS_OS_NAME=\\\"${CMAKE_SYSTEM}\\\")
add_definitions (-DPREFIX=\\\"${CMAKE_INSTALL_PREFIX}\\\")

if (OPENVAS_LOG_DIR)
  add_definitions (-DOPENVAS_LOG_DIR=\\\"${OPENVAS_LOG_DIR}\\\")
endif (OPENVAS_LOG_DIR)

if (MINGW)
  set (GLIB_LDFLAGS "-L${CROSS_ENV}/lib")
  set (OPENVAS_LDFLAGS "-L${CMAKE_INSTALL_PREFIX}/lib")

  set_target_properties (check_omp PROPERTIES LINK_FLAGS
                         "${GLIB_LDFLAGS} ${OPENVAS_LDFLAGS}")

  set (GLIB_CFLAGS "-I${CROSS_ENV}include")
  set (GLIB_CFLAGS "${GLIB_CFLAGS} -I${CROSS_ENV}include/glib-2.0")
  set (GLIB_CFLAGS "${GLIB_CFLAGS} -I${CROSS_ENV}lib/glib-2.0/include")

  set_target_properties (check_omp PROPERTIES COMPILE_FLAGS
                         "-I${CMAKE_INSTALL_PREFIX}/include ${GLIB_CFLAGS}")

  target_link_libraries (check_omp "${GLIB_LDFLAGS} ${OPENVAS_LDFLAGS} -lglib-2.0 -lgnutls -lws2_32 -lgcrypt -lintl -lgpg-error -liconv -lz -lole32 -lopenvas_omp -lopenvas_misc")
else (MINGW)
  set_target_properties (check_omp PROPERTIES COMPILE_FLAGS
                         "${HEADER_TEMP} ${GNUTLS_CFLAGS} ${OPENVAS_CFLAGS} ${GLIB_CFLAGS}")

  if (BUILD_STATIC_NAGIOS)
    set(CMAKE_EXE_LINKER_FLAGS -static)
    set(CMAKE_FIND_LIBRARY_SUFFIXES .a)
    set(CMAKE_EXE_LINK_DYNAMIC_C_FLAGS)
    set(CMAKE_SHARED_LIBRARY_C_FLAGS)
    set(CMAKE_SHARED_LIBRARY_LINK_C_FLAGS)
    set_property(GLOBAL PROPERTY TARGET_SUPPORTS_SHARED_LIBS FALSE)

    target_link_libraries (check_omp "${OPENVAS_LDFLAGS} -lgpg-error -lgpgme")
  else (BUILD_STATIC_NAGIOS)
    target_link_libraries (check_omp "${GNUTLS_LDFLAGS} ${GLIB_LDFLAGS} ${LIB_TEMP} ${OPENVAS_LDFLAGS}")
  endif (BUILD_STATIC_NAGIOS)
endif (MINGW)

mark_as_advanced (LIB_TEMP)
mark_as_advanced (HEADER_TEMP)

## Install

install (TARGETS check_omp
         RUNTIME DESTINATION ${BINDIR})

# FIXME: etags/ctags/tags support

