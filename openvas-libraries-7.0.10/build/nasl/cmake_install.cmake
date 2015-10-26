# Install script for directory: /home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl

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
      "$ENV{DESTDIR}/usr/local/openvas/lib/libopenvas_nasl.so.7.0.10"
      "$ENV{DESTDIR}/usr/local/openvas/lib/libopenvas_nasl.so.7"
      "$ENV{DESTDIR}/usr/local/openvas/lib/libopenvas_nasl.so"
      )
    IF(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      FILE(RPATH_CHECK
           FILE "${file}"
           RPATH "/usr/local/openvas/lib")
    ENDIF()
  ENDFOREACH()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/openvas/lib/libopenvas_nasl.so.7.0.10;/usr/local/openvas/lib/libopenvas_nasl.so.7;/usr/local/openvas/lib/libopenvas_nasl.so")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/usr/local/openvas/lib" TYPE SHARED_LIBRARY FILES
    "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/build/nasl/libopenvas_nasl.so.7.0.10"
    "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/build/nasl/libopenvas_nasl.so.7"
    "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/build/nasl/libopenvas_nasl.so"
    )
  FOREACH(file
      "$ENV{DESTDIR}/usr/local/openvas/lib/libopenvas_nasl.so.7.0.10"
      "$ENV{DESTDIR}/usr/local/openvas/lib/libopenvas_nasl.so.7"
      "$ENV{DESTDIR}/usr/local/openvas/lib/libopenvas_nasl.so"
      )
    IF(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      FILE(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "../base:../misc:/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/build/base:/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/build/misc:"
           NEW_RPATH "/usr/local/openvas/lib")
      IF(CMAKE_INSTALL_DO_STRIP)
        EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "${file}")
      ENDIF(CMAKE_INSTALL_DO_STRIP)
    ENDIF()
  ENDFOREACH()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/openvas/include/openvas/nasl/nasl.h")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/usr/local/openvas/include/openvas/nasl" TYPE FILE FILES "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/openvas/bin/openvas-nasl" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/openvas/bin/openvas-nasl")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/openvas/bin/openvas-nasl"
         RPATH "/usr/local/openvas/lib")
  ENDIF()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/openvas/bin/openvas-nasl")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/usr/local/openvas/bin" TYPE EXECUTABLE FILES "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/build/nasl/openvas-nasl")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/openvas/bin/openvas-nasl" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/openvas/bin/openvas-nasl")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/usr/local/openvas/bin/openvas-nasl"
         OLD_RPATH "../base:../misc:/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/build/misc:/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/build/nasl:/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/build/base:"
         NEW_RPATH "/usr/local/openvas/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/openvas/bin/openvas-nasl")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/openvas/bin/openvas-nasl-lint" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/openvas/bin/openvas-nasl-lint")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/openvas/bin/openvas-nasl-lint"
         RPATH "/usr/local/openvas/lib")
  ENDIF()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/openvas/bin/openvas-nasl-lint")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/usr/local/openvas/bin" TYPE EXECUTABLE FILES "/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/build/nasl/openvas-nasl-lint")
  IF(EXISTS "$ENV{DESTDIR}/usr/local/openvas/bin/openvas-nasl-lint" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/openvas/bin/openvas-nasl-lint")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/usr/local/openvas/bin/openvas-nasl-lint"
         OLD_RPATH "../base:../misc:/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/build/misc:/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/build/nasl:/home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/build/base:"
         NEW_RPATH "/usr/local/openvas/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/openvas/bin/openvas-nasl-lint")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

