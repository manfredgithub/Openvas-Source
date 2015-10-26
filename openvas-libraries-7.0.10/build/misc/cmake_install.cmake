# Install script for directory: /home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/misc

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/usr/local/openvas")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "Debug")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "0")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FOREACH(file
      "$ENV{DESTDIR}/usr/local/openvas/lib/libopenvas_misc.so.7.0.10"
      "$ENV{DESTDIR}/usr/local/openvas/lib/libopenvas_misc.so.7"
      "$ENV{DESTDIR}/usr/local/openvas/lib/libopenvas_misc.so"
      )
    IF(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      FILE(RPATH_CHECK
           FILE "${file}"
           RPATH "/usr/local/openvas/lib")
    ENDIF()
  ENDFOREACH()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/openvas/lib/libopenvas_misc.so.7.0.10;/usr/local/openvas/lib/libopenvas_misc.so.7;/usr/local/openvas/lib/libopenvas_misc.so")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/usr/local/openvas/lib" TYPE SHARED_LIBRARY FILES
    "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/build/misc/libopenvas_misc.so.7.0.10"
    "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/build/misc/libopenvas_misc.so.7"
    "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/build/misc/libopenvas_misc.so"
    )
  FOREACH(file
      "$ENV{DESTDIR}/usr/local/openvas/lib/libopenvas_misc.so.7.0.10"
      "$ENV{DESTDIR}/usr/local/openvas/lib/libopenvas_misc.so.7"
      "$ENV{DESTDIR}/usr/local/openvas/lib/libopenvas_misc.so"
      )
    IF(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      FILE(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/build/misc/../base:/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/build/base:"
           NEW_RPATH "/usr/local/openvas/lib")
      IF(CMAKE_INSTALL_DO_STRIP)
        EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "${file}")
      ENDIF(CMAKE_INSTALL_DO_STRIP)
    ENDIF()
  ENDFOREACH()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/openvas/include/openvas/misc/arglists.h;/usr/local/openvas/include/openvas/misc/bpf_share.h;/usr/local/openvas/include/openvas/misc/ftp_funcs.h;/usr/local/openvas/include/openvas/misc/hash_table_file.h;/usr/local/openvas/include/openvas/misc/kb.h;/usr/local/openvas/include/openvas/misc/network.h;/usr/local/openvas/include/openvas/misc/pcap_openvas.h;/usr/local/openvas/include/openvas/misc/plugutils.h;/usr/local/openvas/include/openvas/misc/popen.h;/usr/local/openvas/include/openvas/misc/openvas_proctitle.h;/usr/local/openvas/include/openvas/misc/openvas_auth.h;/usr/local/openvas/include/openvas/misc/openvas_logging.h;/usr/local/openvas/include/openvas/misc/openvas_server.h;/usr/local/openvas/include/openvas/misc/openvas_ssh_login.h;/usr/local/openvas/include/openvas/misc/openvas_uuid.h;/usr/local/openvas/include/openvas/misc/resource_request.h;/usr/local/openvas/include/openvas/misc/nvt_categories.h;/usr/local/openvas/include/openvas/misc/internal_com.h;/usr/local/openvas/include/openvas/misc/scanners_utils.h;/usr/local/openvas/include/openvas/misc/system.h;/usr/local/openvas/include/openvas/misc/www_funcs.h")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/usr/local/openvas/include/openvas/misc" TYPE FILE FILES
    "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/misc/arglists.h"
    "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/misc/bpf_share.h"
    "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/misc/ftp_funcs.h"
    "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/misc/hash_table_file.h"
    "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/misc/kb.h"
    "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/misc/network.h"
    "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/misc/pcap_openvas.h"
    "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/misc/plugutils.h"
    "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/misc/popen.h"
    "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/misc/openvas_proctitle.h"
    "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/misc/openvas_auth.h"
    "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/misc/openvas_logging.h"
    "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/misc/openvas_server.h"
    "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/misc/openvas_ssh_login.h"
    "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/misc/openvas_uuid.h"
    "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/misc/resource_request.h"
    "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/misc/nvt_categories.h"
    "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/misc/internal_com.h"
    "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/misc/scanners_utils.h"
    "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/misc/system.h"
    "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/misc/www_funcs.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

