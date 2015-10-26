# Install script for directory: /home/peterwang/OpenVAS_Source/openvas-manager-5.0.10

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
  file (MAKE_DIRECTORY $ENV{DESTDIR}/usr/local/openvas/var/lib/openvas/openvasmd/report_formats)
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/openvas/etc/openvas/openvasmd_log.conf;/usr/local/openvas/etc/openvas/pwpolicy.conf")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/usr/local/openvas/etc/openvas" TYPE FILE FILES
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/build/src/openvasmd_log.conf"
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/src/pwpolicy.conf"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/openvas/share/openvas/openvasmd/global_report_formats/910200ca-dc05-11e1-954f-406186ea4fc5/generate;/usr/local/openvas/share/openvas/openvasmd/global_report_formats/910200ca-dc05-11e1-954f-406186ea4fc5/ARF.xsl")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/usr/local/openvas/share/openvas/openvasmd/global_report_formats/910200ca-dc05-11e1-954f-406186ea4fc5" TYPE FILE PERMISSIONS OWNER_WRITE OWNER_READ GROUP_READ WORLD_READ FILES
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/src/report_formats/ARF/generate"
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/src/report_formats/ARF/ARF.xsl"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/openvas/share/openvas/openvasmd/global_report_formats/5ceff8ba-1f62-11e1-ab9f-406186ea4fc5/generate;/usr/local/openvas/share/openvas/openvasmd/global_report_formats/5ceff8ba-1f62-11e1-ab9f-406186ea4fc5/CPE.xsl")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/usr/local/openvas/share/openvas/openvasmd/global_report_formats/5ceff8ba-1f62-11e1-ab9f-406186ea4fc5" TYPE FILE PERMISSIONS OWNER_WRITE OWNER_READ GROUP_READ WORLD_READ FILES
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/src/report_formats/CPE/generate"
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/src/report_formats/CPE/CPE.xsl"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/openvas/share/openvas/openvasmd/global_report_formats/c1645568-627a-11e3-a660-406186ea4fc5/generate;/usr/local/openvas/share/openvas/openvasmd/global_report_formats/c1645568-627a-11e3-a660-406186ea4fc5/CSV_Results.xsl")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/usr/local/openvas/share/openvas/openvasmd/global_report_formats/c1645568-627a-11e3-a660-406186ea4fc5" TYPE FILE PERMISSIONS OWNER_WRITE OWNER_READ GROUP_READ WORLD_READ FILES
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/src/report_formats/CSV_Results/generate"
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/src/report_formats/CSV_Results/CSV_Results.xsl"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/openvas/share/openvas/openvasmd/global_report_formats/9087b18c-626c-11e3-8892-406186ea4fc5/generate;/usr/local/openvas/share/openvas/openvasmd/global_report_formats/9087b18c-626c-11e3-8892-406186ea4fc5/CSV_Hosts.xsl")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/usr/local/openvas/share/openvas/openvasmd/global_report_formats/9087b18c-626c-11e3-8892-406186ea4fc5" TYPE FILE PERMISSIONS OWNER_WRITE OWNER_READ GROUP_READ WORLD_READ FILES
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/src/report_formats/CSV_Hosts/generate"
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/src/report_formats/CSV_Hosts/CSV_Hosts.xsl"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/openvas/share/openvas/openvasmd/global_report_formats/6c248850-1f62-11e1-b082-406186ea4fc5/generate;/usr/local/openvas/share/openvas/openvasmd/global_report_formats/6c248850-1f62-11e1-b082-406186ea4fc5/HTML.xsl")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/usr/local/openvas/share/openvas/openvasmd/global_report_formats/6c248850-1f62-11e1-b082-406186ea4fc5" TYPE FILE PERMISSIONS OWNER_WRITE OWNER_READ GROUP_READ WORLD_READ FILES
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/src/report_formats/HTML/generate"
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/src/report_formats/HTML/HTML.xsl"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/openvas/share/openvas/openvasmd/global_report_formats/77bd6c4a-1f62-11e1-abf0-406186ea4fc5/generate;/usr/local/openvas/share/openvas/openvasmd/global_report_formats/77bd6c4a-1f62-11e1-abf0-406186ea4fc5/ITG.xsl")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/usr/local/openvas/share/openvas/openvasmd/global_report_formats/77bd6c4a-1f62-11e1-abf0-406186ea4fc5" TYPE FILE PERMISSIONS OWNER_WRITE OWNER_READ GROUP_READ WORLD_READ FILES
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/src/report_formats/ITG/generate"
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/src/report_formats/ITG/ITG.xsl"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/openvas/share/openvas/openvasmd/global_report_formats/a684c02c-b531-11e1-bdc2-406186ea4fc5/generate;/usr/local/openvas/share/openvas/openvasmd/global_report_formats/a684c02c-b531-11e1-bdc2-406186ea4fc5/latex.xsl")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/usr/local/openvas/share/openvas/openvasmd/global_report_formats/a684c02c-b531-11e1-bdc2-406186ea4fc5" TYPE FILE PERMISSIONS OWNER_WRITE OWNER_READ GROUP_READ WORLD_READ FILES
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/src/report_formats/LaTeX/generate"
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/src/report_formats/LaTeX/latex.xsl"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/openvas/share/openvas/openvasmd/global_report_formats/9ca6fe72-1f62-11e1-9e7c-406186ea4fc5/generate;/usr/local/openvas/share/openvas/openvasmd/global_report_formats/9ca6fe72-1f62-11e1-9e7c-406186ea4fc5/NBE.xsl")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/usr/local/openvas/share/openvas/openvasmd/global_report_formats/9ca6fe72-1f62-11e1-9e7c-406186ea4fc5" TYPE FILE PERMISSIONS OWNER_WRITE OWNER_READ GROUP_READ WORLD_READ FILES
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/src/report_formats/NBE/generate"
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/src/report_formats/NBE/NBE.xsl"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/openvas/share/openvas/openvasmd/global_report_formats/c402cc3e-b531-11e1-9163-406186ea4fc5/generate;/usr/local/openvas/share/openvas/openvasmd/global_report_formats/c402cc3e-b531-11e1-9163-406186ea4fc5/latex.xsl")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/usr/local/openvas/share/openvas/openvasmd/global_report_formats/c402cc3e-b531-11e1-9163-406186ea4fc5" TYPE FILE PERMISSIONS OWNER_WRITE OWNER_READ GROUP_READ WORLD_READ FILES
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/src/report_formats/PDF/generate"
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/src/report_formats/LaTeX/latex.xsl"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/openvas/share/openvas/openvasmd/global_report_formats/9e5e5deb-879e-4ecc-8be6-a71cd0875cdd/generate;/usr/local/openvas/share/openvas/openvasmd/global_report_formats/9e5e5deb-879e-4ecc-8be6-a71cd0875cdd/hostvisdot-summary.xsl")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/usr/local/openvas/share/openvas/openvasmd/global_report_formats/9e5e5deb-879e-4ecc-8be6-a71cd0875cdd" TYPE FILE PERMISSIONS OWNER_WRITE OWNER_READ GROUP_READ WORLD_READ FILES
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/src/report_formats/Topology/generate"
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/src/report_formats/Topology/hostvisdot-summary.xsl"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/openvas/share/openvas/openvasmd/global_report_formats/a3810a62-1f62-11e1-9219-406186ea4fc5/generate;/usr/local/openvas/share/openvas/openvasmd/global_report_formats/a3810a62-1f62-11e1-9219-406186ea4fc5/TXT.xsl")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/usr/local/openvas/share/openvas/openvasmd/global_report_formats/a3810a62-1f62-11e1-9219-406186ea4fc5" TYPE FILE PERMISSIONS OWNER_WRITE OWNER_READ GROUP_READ WORLD_READ FILES
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/src/report_formats/TXT/generate"
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/src/report_formats/TXT/TXT.xsl"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/openvas/share/openvas/openvasmd/global_report_formats/a994b278-1f62-11e1-96ac-406186ea4fc5/generate")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/usr/local/openvas/share/openvas/openvasmd/global_report_formats/a994b278-1f62-11e1-96ac-406186ea4fc5" TYPE FILE PERMISSIONS OWNER_WRITE OWNER_READ GROUP_READ WORLD_READ FILES "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/src/report_formats/XML/generate")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/openvas/share/openvas/openvasmd/global_report_formats/c15ad349-bd8d-457a-880a-c7056532ee15/generate;/usr/local/openvas/share/openvas/openvasmd/global_report_formats/c15ad349-bd8d-457a-880a-c7056532ee15/Verinice_ISM.xsl;/usr/local/openvas/share/openvas/openvasmd/global_report_formats/c15ad349-bd8d-457a-880a-c7056532ee15/classification.csv;/usr/local/openvas/share/openvas/openvasmd/global_report_formats/c15ad349-bd8d-457a-880a-c7056532ee15/classification.xsl;/usr/local/openvas/share/openvas/openvasmd/global_report_formats/c15ad349-bd8d-457a-880a-c7056532ee15/classification_generator.sh")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/usr/local/openvas/share/openvas/openvasmd/global_report_formats/c15ad349-bd8d-457a-880a-c7056532ee15" TYPE FILE PERMISSIONS OWNER_WRITE OWNER_READ GROUP_READ WORLD_READ FILES
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/src/report_formats/Verinice_ISM/generate"
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/src/report_formats/Verinice_ISM/Verinice_ISM.xsl"
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/src/report_formats/Verinice_ISM/classification.csv"
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/src/report_formats/Verinice_ISM/classification.xsl"
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/src/report_formats/Verinice_ISM/classification_generator.sh"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/openvas/share/openvas/openvasmd/global_schema_formats/02052818-dab6-11df-9be4-002264764cea/generate;/usr/local/openvas/share/openvas/openvasmd/global_schema_formats/02052818-dab6-11df-9be4-002264764cea/rnc.xsl;/usr/local/openvas/share/openvas/openvasmd/global_schema_formats/02052818-dab6-11df-9be4-002264764cea/HTML.xsl")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/usr/local/openvas/share/openvas/openvasmd/global_schema_formats/02052818-dab6-11df-9be4-002264764cea" TYPE FILE PERMISSIONS OWNER_WRITE OWNER_READ GROUP_READ WORLD_READ FILES
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/src/schema_formats/HTML/generate"
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/src/schema_formats/RNC/rnc.xsl"
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/src/schema_formats/HTML/HTML.xsl"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/openvas/share/openvas/openvasmd/global_schema_formats/787a4a18-dabc-11df-9486-002264764cea/generate;/usr/local/openvas/share/openvas/openvasmd/global_schema_formats/787a4a18-dabc-11df-9486-002264764cea/rnc.xsl;/usr/local/openvas/share/openvas/openvasmd/global_schema_formats/787a4a18-dabc-11df-9486-002264764cea/RNC.xsl")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/usr/local/openvas/share/openvas/openvasmd/global_schema_formats/787a4a18-dabc-11df-9486-002264764cea" TYPE FILE PERMISSIONS OWNER_WRITE OWNER_READ GROUP_READ WORLD_READ FILES
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/src/schema_formats/RNC/generate"
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/src/schema_formats/RNC/rnc.xsl"
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/src/schema_formats/RNC/RNC.xsl"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/openvas/share/openvas/openvasmd/global_schema_formats/18e826fc-dab6-11df-b913-002264764cea/generate;/usr/local/openvas/share/openvas/openvasmd/global_schema_formats/18e826fc-dab6-11df-b913-002264764cea/OMP.xml")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/usr/local/openvas/share/openvas/openvasmd/global_schema_formats/18e826fc-dab6-11df-b913-002264764cea" TYPE FILE PERMISSIONS OWNER_WRITE OWNER_READ GROUP_READ WORLD_READ FILES
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/src/schema_formats/XML/generate"
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/src/schema_formats/XML/OMP.xml"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/openvas/share/openvas/openvasmd/global_schema_formats/d6cf255e-947c-11e1-829a-406186ea4fc5/generate;/usr/local/openvas/share/openvas/openvasmd/global_schema_formats/d6cf255e-947c-11e1-829a-406186ea4fc5/OMP.xsl")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/usr/local/openvas/share/openvas/openvasmd/global_schema_formats/d6cf255e-947c-11e1-829a-406186ea4fc5" TYPE FILE PERMISSIONS OWNER_WRITE OWNER_READ GROUP_READ WORLD_READ FILES
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/src/schema_formats/XML-brief/generate"
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/src/schema_formats/XML-brief/OMP.xsl"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/openvas/share/openvas/openvasmd/global_alert_methods/cd1f5a34-6bdc-11e0-9827-002264764cea/alert")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/usr/local/openvas/share/openvas/openvasmd/global_alert_methods/cd1f5a34-6bdc-11e0-9827-002264764cea" TYPE FILE PERMISSIONS OWNER_WRITE OWNER_READ GROUP_READ WORLD_READ FILES "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/src/alert_methods/Sourcefire/alert")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/openvas/share/openvas/openvasmd/global_alert_methods/f9d97653-f89b-41af-9ba1-0f6ee00e9c1a/alert")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/usr/local/openvas/share/openvas/openvasmd/global_alert_methods/f9d97653-f89b-41af-9ba1-0f6ee00e9c1a" TYPE FILE PERMISSIONS OWNER_WRITE OWNER_READ GROUP_READ WORLD_READ FILES "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/src/alert_methods/verinice/alert")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file (MAKE_DIRECTORY $ENV{DESTDIR}/usr/local/openvas/share/openvas/openvasmd/wizards)
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/openvas/share/openvas/openvasmd/wizards/quick_first_scan.xml;/usr/local/openvas/share/openvas/openvasmd/wizards/get_tasks_deep.xml;/usr/local/openvas/share/openvas/openvasmd/wizards/delete_task_deep.xml;/usr/local/openvas/share/openvas/openvasmd/wizards/quick_auth_scan.xml;/usr/local/openvas/share/openvas/openvasmd/wizards/quick_task.xml;/usr/local/openvas/share/openvas/openvasmd/wizards/reset_task.xml")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/usr/local/openvas/share/openvas/openvasmd/wizards" TYPE FILE PERMISSIONS OWNER_WRITE OWNER_READ GROUP_READ WORLD_READ FILES
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/src/wizards/quick_first_scan.xml"
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/src/wizards/get_tasks_deep.xml"
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/src/wizards/delete_task_deep.xml"
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/src/wizards/quick_auth_scan.xml"
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/src/wizards/quick_task.xml"
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/src/wizards/reset_task.xml"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/openvas/share/openvas/openvasmd/portnames_update.xsl")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/usr/local/openvas/share/openvas/openvasmd" TYPE FILE PERMISSIONS OWNER_WRITE OWNER_READ GROUP_READ WORLD_READ FILES "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/tools/portnames_update.xsl")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/openvas/share/openvas/scap/scap_db_init.sql;/usr/local/openvas/share/openvas/scap/cpe_update.xsl;/usr/local/openvas/share/openvas/scap/cpe_youngerthan.xsl;/usr/local/openvas/share/openvas/scap/cve_update.xsl;/usr/local/openvas/share/openvas/scap/cve_youngerthan.xsl;/usr/local/openvas/share/openvas/scap/cpe_getbyname.xsl;/usr/local/openvas/share/openvas/scap/cve_getbyname.xsl;/usr/local/openvas/share/openvas/scap/oval_update.xsl;/usr/local/openvas/share/openvas/scap/oval_timestamp.xsl;/usr/local/openvas/share/openvas/scap/ovaldef_getbyname.xsl;/usr/local/openvas/share/openvas/scap/oval_verify.xsl;/usr/local/openvas/share/openvas/scap/ovaldef_list_ids.xsl")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/usr/local/openvas/share/openvas/scap" TYPE FILE PERMISSIONS OWNER_WRITE OWNER_READ GROUP_READ WORLD_READ FILES
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/tools/scap_db_init.sql"
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/tools/cpe_update.xsl"
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/tools/cpe_youngerthan.xsl"
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/tools/cve_update.xsl"
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/tools/cve_youngerthan.xsl"
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/tools/cpe_getbyname.xsl"
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/tools/cve_getbyname.xsl"
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/tools/oval_update.xsl"
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/tools/oval_timestamp.xsl"
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/tools/ovaldef_getbyname.xsl"
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/tools/oval_verify.xsl"
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/tools/ovaldef_list_ids.xsl"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/openvas/share/openvas/cert/cert_db_init.sql;/usr/local/openvas/share/openvas/cert/dfn_cert_update.xsl;/usr/local/openvas/share/openvas/cert/dfn_cert_getbyname.xsl")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/usr/local/openvas/share/openvas/cert" TYPE FILE PERMISSIONS OWNER_WRITE OWNER_READ GROUP_READ WORLD_READ FILES
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/tools/cert_db_init.sql"
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/tools/dfn_cert_update.xsl"
    "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/tools/dfn_cert_getbyname.xsl"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/openvas/sbin/openvas-scapdata-sync")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/usr/local/openvas/sbin" TYPE FILE PERMISSIONS OWNER_EXECUTE OWNER_READ OWNER_WRITE GROUP_READ GROUP_EXECUTE WORLD_READ WORLD_EXECUTE FILES "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/build/tools/openvas-scapdata-sync")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/openvas/sbin/openvas-portnames-update")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/usr/local/openvas/sbin" TYPE FILE PERMISSIONS OWNER_EXECUTE OWNER_READ OWNER_WRITE GROUP_READ GROUP_EXECUTE WORLD_READ WORLD_EXECUTE FILES "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/build/tools/openvas-portnames-update")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/openvas/sbin/openvas-certdata-sync")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/usr/local/openvas/sbin" TYPE FILE PERMISSIONS OWNER_EXECUTE OWNER_READ OWNER_WRITE GROUP_READ GROUP_EXECUTE WORLD_READ WORLD_EXECUTE FILES "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/build/tools/openvas-certdata-sync")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/openvas/sbin/greenbone-scapdata-sync")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/usr/local/openvas/sbin" TYPE FILE PERMISSIONS OWNER_EXECUTE OWNER_READ OWNER_WRITE GROUP_READ GROUP_EXECUTE WORLD_READ WORLD_EXECUTE FILES "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/tools/greenbone-scapdata-sync")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/openvas/sbin/greenbone-certdata-sync")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/usr/local/openvas/sbin" TYPE FILE PERMISSIONS OWNER_EXECUTE OWNER_READ OWNER_WRITE GROUP_READ GROUP_EXECUTE WORLD_READ WORLD_EXECUTE FILES "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/tools/greenbone-certdata-sync")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/openvas/share/openvas/openvas-lsc-rpm-creator.sh")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/usr/local/openvas/share/openvas" TYPE FILE PERMISSIONS OWNER_EXECUTE OWNER_READ OWNER_WRITE GROUP_READ GROUP_EXECUTE WORLD_READ WORLD_EXECUTE FILES "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/tools/openvas-lsc-rpm-creator.sh")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/build/src/cmake_install.cmake")
  INCLUDE("/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/build/doc/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

IF(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
ELSE(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
ENDIF(CMAKE_INSTALL_COMPONENT)

FILE(WRITE "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/build/${CMAKE_INSTALL_MANIFEST}" "")
FOREACH(file ${CMAKE_INSTALL_MANIFEST_FILES})
  FILE(APPEND "/home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/build/${CMAKE_INSTALL_MANIFEST}" "${file}\n")
ENDFOREACH(file)
