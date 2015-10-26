# Install script for directory: /home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7

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
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/openvas/share/openvas/gsa/classic/favicon.gif;/usr/local/openvas/share/openvas/gsa/classic/gsad.xsl;/usr/local/openvas/share/openvas/gsa/classic/gsa-style.css;/usr/local/openvas/share/openvas/gsa/classic/help.xsl;/usr/local/openvas/share/openvas/gsa/classic/omp.xsl;/usr/local/openvas/share/openvas/gsa/classic/omp-doc.xsl;/usr/local/openvas/share/openvas/gsa/classic/rnc.xsl;/usr/local/openvas/share/openvas/gsa/classic/os.xml;/usr/local/openvas/share/openvas/gsa/classic/wizard.xsl")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/usr/local/openvas/share/openvas/gsa/classic" TYPE FILE FILES
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/favicon.gif"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/gsad.xsl"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/gsa-style.css"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/help.xsl"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/omp.xsl"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/omp-doc.xsl"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/rnc.xsl"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/os.xml"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/wizard.xsl"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/openvas/share/openvas/gsa/classic/login/login.html;/usr/local/openvas/share/openvas/gsa/classic/login/gsa-style.css;/usr/local/openvas/share/openvas/gsa/classic/login/favicon.gif")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/usr/local/openvas/share/openvas/gsa/classic/login" TYPE FILE FILES
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/login/login.html"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/gsa-style.css"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/favicon.gif"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/openvas/share/openvas/gsa/classic/login/img/gsa_splash.png")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/usr/local/openvas/share/openvas/gsa/classic/login/img" TYPE FILE FILES "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/gsa_splash.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/openvas/share/openvas/gsa/classic/po/de.xml;/usr/local/openvas/share/openvas/gsa/classic/po/zh.xml")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/usr/local/openvas/share/openvas/gsa/classic/po" TYPE FILE FILES
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/po/de.xml"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/po/zh.xml"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/openvas/share/openvas/gsa/classic/help_de.xsl;/usr/local/openvas/share/openvas/gsa/classic/help_zh.xsl")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/usr/local/openvas/share/openvas/gsa/classic" TYPE FILE FILES
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/help_de.xsl"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/help_zh.xsl"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/openvas/share/openvas/gsa/classic/login/img/style/window_dec_a.png;/usr/local/openvas/share/openvas/gsa/classic/login/img/style/window_dec_b.png;/usr/local/openvas/share/openvas/gsa/classic/login/img/style/window_dec_c.png")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/usr/local/openvas/share/openvas/gsa/classic/login/img/style" TYPE FILE FILES
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/style/window_dec_a.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/style/window_dec_b.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/style/window_dec_c.png"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/openvas/share/openvas/gsa/classic/img/agent.png;/usr/local/openvas/share/openvas/gsa/classic/img/descending.png;/usr/local/openvas/share/openvas/gsa/classic/img/key.png;/usr/local/openvas/share/openvas/gsa/classic/img/p_bar_bg.png;/usr/local/openvas/share/openvas/gsa/classic/img/start_inactive.png;/usr/local/openvas/share/openvas/gsa/classic/img/alert_sign.png;/usr/local/openvas/share/openvas/gsa/classic/img/details.png;/usr/local/openvas/share/openvas/gsa/classic/img/details_inactive.png;/usr/local/openvas/share/openvas/gsa/classic/img/list_inactive.png;/usr/local/openvas/share/openvas/gsa/classic/img/p_bar_done.png;/usr/local/openvas/share/openvas/gsa/classic/img/start.png;/usr/local/openvas/share/openvas/gsa/classic/img/ascending_inactive.png;/usr/local/openvas/share/openvas/gsa/classic/img/download.png;/usr/local/openvas/share/openvas/gsa/classic/img/list.png;/usr/local/openvas/share/openvas/gsa/classic/img/p_bar_error.png;/usr/local/openvas/share/openvas/gsa/classic/img/stop_inactive.png;/usr/local/openvas/share/openvas/gsa/classic/img/ascending.png;/usr/local/openvas/share/openvas/gsa/classic/img/edit_inactive.png;/usr/local/openvas/share/openvas/gsa/classic/img/p_bar_new.png;/usr/local/openvas/share/openvas/gsa/classic/img/stop.png;/usr/local/openvas/share/openvas/gsa/classic/img/edit.png;/usr/local/openvas/share/openvas/gsa/classic/img/p_bar.png;/usr/local/openvas/share/openvas/gsa/classic/img/bullet2.png;/usr/local/openvas/share/openvas/gsa/classic/img/exe.png;/usr/local/openvas/share/openvas/gsa/classic/img/p_bar_request.png;/usr/local/openvas/share/openvas/gsa/classic/img/trend_down.png;/usr/local/openvas/share/openvas/gsa/classic/img/bullet.png;/usr/local/openvas/share/openvas/gsa/classic/img/refresh.png;/usr/local/openvas/share/openvas/gsa/classic/img/trend_less.png;/usr/local/openvas/share/openvas/gsa/classic/img/deb.png;/usr/local/openvas/share/openvas/gsa/classic/img/gsa_splash.png;/usr/local/openvas/share/openvas/gsa/classic/img/resume_inactive.png;/usr/local/openvas/share/openvas/gsa/classic/img/trend_more.png;/usr/local/openvas/share/openvas/gsa/classic/img/delete_inactive.png;/usr/local/openvas/share/openvas/gsa/classic/img/help.png;/usr/local/openvas/share/openvas/gsa/classic/img/new_note.png;/usr/local/openvas/share/openvas/gsa/classic/img/resume.png;/usr/local/openvas/share/openvas/gsa/classic/img/trend_nochange.png;/usr/local/openvas/share/openvas/gsa/classic/img/delete_note.png;/usr/local/openvas/share/openvas/gsa/classic/img/new.png;/usr/local/openvas/share/openvas/gsa/classic/img/rpm.png;/usr/local/openvas/share/openvas/gsa/classic/img/trend_up.png;/usr/local/openvas/share/openvas/gsa/classic/img/delete.png;/usr/local/openvas/share/openvas/gsa/classic/img/scheduled_inactive.png;/usr/local/openvas/share/openvas/gsa/classic/img/descending_inactive.png;/usr/local/openvas/share/openvas/gsa/classic/img/note.png;/usr/local/openvas/share/openvas/gsa/classic/img/scheduled.png;/usr/local/openvas/share/openvas/gsa/classic/img/pause.png;/usr/local/openvas/share/openvas/gsa/classic/img/override.png;/usr/local/openvas/share/openvas/gsa/classic/img/new_override.png;/usr/local/openvas/share/openvas/gsa/classic/img/pause_inactive.png;/usr/local/openvas/share/openvas/gsa/classic/img/trashcan.png;/usr/local/openvas/share/openvas/gsa/classic/img/trashcan_inactive.png;/usr/local/openvas/share/openvas/gsa/classic/img/indicator_js.png;/usr/local/openvas/share/openvas/gsa/classic/img/restore.png;/usr/local/openvas/share/openvas/gsa/classic/img/restore_inactive.png;/usr/local/openvas/share/openvas/gsa/classic/img/delta.png;/usr/local/openvas/share/openvas/gsa/classic/img/delta_inactive.png;/usr/local/openvas/share/openvas/gsa/classic/img/delta_second.png;/usr/local/openvas/share/openvas/gsa/classic/img/indicator_operation_ok.png;/usr/local/openvas/share/openvas/gsa/classic/img/indicator_operation_failed.png;/usr/local/openvas/share/openvas/gsa/classic/img/prognosis.png;/usr/local/openvas/share/openvas/gsa/classic/img/prognosis_inactive.png;/usr/local/openvas/share/openvas/gsa/classic/img/provide_view.png;/usr/local/openvas/share/openvas/gsa/classic/img/view_other.png;/usr/local/openvas/share/openvas/gsa/classic/img/sensor.png;/usr/local/openvas/share/openvas/gsa/classic/img/wizard.png;/usr/local/openvas/share/openvas/gsa/classic/img/upload.png;/usr/local/openvas/share/openvas/gsa/classic/img/clone.png;/usr/local/openvas/share/openvas/gsa/classic/img/clone_inactive.png;/usr/local/openvas/share/openvas/gsa/classic/img/enchantress.png;/usr/local/openvas/share/openvas/gsa/classic/img/next.png;/usr/local/openvas/share/openvas/gsa/classic/img/next_inactive.png;/usr/local/openvas/share/openvas/gsa/classic/img/previous.png;/usr/local/openvas/share/openvas/gsa/classic/img/previous_inactive.png;/usr/local/openvas/share/openvas/gsa/classic/img/verify.png;/usr/local/openvas/share/openvas/gsa/classic/img/verify_inactive.png;/usr/local/openvas/share/openvas/gsa/classic/img/tag.png;/usr/local/openvas/share/openvas/gsa/classic/img/fold.png;/usr/local/openvas/share/openvas/gsa/classic/img/unfold.png;/usr/local/openvas/share/openvas/gsa/classic/img/enable.png;/usr/local/openvas/share/openvas/gsa/classic/img/disable.png;/usr/local/openvas/share/openvas/gsa/classic/img/overrides_disabled.png;/usr/local/openvas/share/openvas/gsa/classic/img/overrides_enabled.png;/usr/local/openvas/share/openvas/gsa/classic/img/alterable.png;/usr/local/openvas/share/openvas/gsa/classic/img/first.png;/usr/local/openvas/share/openvas/gsa/classic/img/first_inactive.png;/usr/local/openvas/share/openvas/gsa/classic/img/last.png;/usr/local/openvas/share/openvas/gsa/classic/img/last_inactive.png;/usr/local/openvas/share/openvas/gsa/classic/img/feedback.png")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/usr/local/openvas/share/openvas/gsa/classic/img" TYPE FILE FILES
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/agent.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/descending.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/key.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/p_bar_bg.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/start_inactive.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/alert_sign.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/details.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/details_inactive.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/list_inactive.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/p_bar_done.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/start.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/ascending_inactive.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/download.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/list.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/p_bar_error.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/stop_inactive.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/ascending.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/edit_inactive.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/p_bar_new.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/stop.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/edit.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/p_bar.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/bullet2.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/exe.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/p_bar_request.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/trend_down.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/bullet.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/refresh.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/trend_less.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/deb.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/gsa_splash.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/resume_inactive.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/trend_more.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/delete_inactive.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/help.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/new_note.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/resume.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/trend_nochange.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/delete_note.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/new.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/rpm.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/trend_up.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/delete.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/scheduled_inactive.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/descending_inactive.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/note.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/scheduled.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/pause.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/override.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/new_override.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/pause_inactive.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/trashcan.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/trashcan_inactive.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/indicator_js.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/restore.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/restore_inactive.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/delta.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/delta_inactive.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/delta_second.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/indicator_operation_ok.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/indicator_operation_failed.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/prognosis.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/prognosis_inactive.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/provide_view.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/view_other.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/sensor.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/wizard.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/upload.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/clone.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/clone_inactive.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/enchantress.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/next.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/next_inactive.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/previous.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/previous_inactive.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/verify.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/verify_inactive.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/tag.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/fold.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/unfold.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/enable.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/disable.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/overrides_disabled.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/overrides_enabled.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/alterable.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/first.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/first_inactive.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/last.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/last_inactive.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/feedback.png"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/openvas/share/openvas/gsa/classic/img/style/logo_l.png;/usr/local/openvas/share/openvas/gsa/classic/img/style/logo_r.png;/usr/local/openvas/share/openvas/gsa/classic/img/style/window_dec_a.png;/usr/local/openvas/share/openvas/gsa/classic/img/style/window_dec_b.png;/usr/local/openvas/share/openvas/gsa/classic/img/style/window_dec_c.png;/usr/local/openvas/share/openvas/gsa/classic/img/style/logo_m.png;/usr/local/openvas/share/openvas/gsa/classic/img/style/window_dec_a_error.png;/usr/local/openvas/share/openvas/gsa/classic/img/style/window_dec_b_error.png;/usr/local/openvas/share/openvas/gsa/classic/img/style/window_dec_c_error.png;/usr/local/openvas/share/openvas/gsa/classic/img/style/top_menu_buttons.png;/usr/local/openvas/share/openvas/gsa/classic/img/style/menu_pointy.png;/usr/local/openvas/share/openvas/gsa/classic/img/style/dropdown_arrow.png;/usr/local/openvas/share/openvas/gsa/classic/img/style/dropdown_arrow_green.png;/usr/local/openvas/share/openvas/gsa/classic/img/style/highlight_green.png")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/usr/local/openvas/share/openvas/gsa/classic/img/style" TYPE FILE FILES
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/style/logo_l.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/style/logo_r.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/style/window_dec_a.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/style/window_dec_b.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/style/window_dec_c.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/style/logo_m.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/style/window_dec_a_error.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/style/window_dec_b_error.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/style/window_dec_c_error.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/style/top_menu_buttons.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/style/menu_pointy.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/style/dropdown_arrow.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/style/dropdown_arrow_green.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/style/highlight_green.png"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/openvas/share/openvas/gsa/classic/img/os_aix.png;/usr/local/openvas/share/openvas/gsa/classic/img/os_apple.png;/usr/local/openvas/share/openvas/gsa/classic/img/os_centos.png;/usr/local/openvas/share/openvas/gsa/classic/img/os_cisco.png;/usr/local/openvas/share/openvas/gsa/classic/img/os_conflict.png;/usr/local/openvas/share/openvas/gsa/classic/img/os_debian.png;/usr/local/openvas/share/openvas/gsa/classic/img/os_fedora.png;/usr/local/openvas/share/openvas/gsa/classic/img/os_freebsd.png;/usr/local/openvas/share/openvas/gsa/classic/img/os_gentoo.png;/usr/local/openvas/share/openvas/gsa/classic/img/os_gos.png;/usr/local/openvas/share/openvas/gsa/classic/img/os_junos.png;/usr/local/openvas/share/openvas/gsa/classic/img/os_hp.png;/usr/local/openvas/share/openvas/gsa/classic/img/os_linux.png;/usr/local/openvas/share/openvas/gsa/classic/img/os_mandriva.png;/usr/local/openvas/share/openvas/gsa/classic/img/os_netbsd.png;/usr/local/openvas/share/openvas/gsa/classic/img/os_novell.png;/usr/local/openvas/share/openvas/gsa/classic/img/os_openbsd.png;/usr/local/openvas/share/openvas/gsa/classic/img/os_redhat.png;/usr/local/openvas/share/openvas/gsa/classic/img/os_slackware.png;/usr/local/openvas/share/openvas/gsa/classic/img/os_sun.png;/usr/local/openvas/share/openvas/gsa/classic/img/os_suse.png;/usr/local/openvas/share/openvas/gsa/classic/img/os_trustix.png;/usr/local/openvas/share/openvas/gsa/classic/img/os_ubuntu.png;/usr/local/openvas/share/openvas/gsa/classic/img/os_ucs.png;/usr/local/openvas/share/openvas/gsa/classic/img/os_unknown.png;/usr/local/openvas/share/openvas/gsa/classic/img/os_vmware.png;/usr/local/openvas/share/openvas/gsa/classic/img/os_windows.png")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/usr/local/openvas/share/openvas/gsa/classic/img" TYPE FILE FILES
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/os_aix.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/os_apple.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/os_centos.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/os_cisco.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/os_conflict.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/os_debian.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/os_fedora.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/os_freebsd.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/os_gentoo.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/os_gos.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/os_junos.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/os_hp.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/os_linux.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/os_mandriva.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/os_netbsd.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/os_novell.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/os_openbsd.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/os_redhat.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/os_slackware.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/os_sun.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/os_suse.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/os_trustix.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/os_ubuntu.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/os_ucs.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/os_unknown.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/os_vmware.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/os_windows.png"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/openvas/share/openvas/gsa/classic/img/cpe/other.png;/usr/local/openvas/share/openvas/gsa/classic/img/cpe/a:apache:http_server.png;/usr/local/openvas/share/openvas/gsa/classic/img/cpe/a:drupal:drupal.png;/usr/local/openvas/share/openvas/gsa/classic/img/cpe/a:google.png;/usr/local/openvas/share/openvas/gsa/classic/img/cpe/a:gnu.png;/usr/local/openvas/share/openvas/gsa/classic/img/cpe/a:mysql:mysql.png;/usr/local/openvas/share/openvas/gsa/classic/img/cpe/a:openbsd:openssh.png;/usr/local/openvas/share/openvas/gsa/classic/img/cpe/a:otrs:otrs.png;/usr/local/openvas/share/openvas/gsa/classic/img/cpe/a:php:php.png;/usr/local/openvas/share/openvas/gsa/classic/img/cpe/a:postgresql:postgresql.png;/usr/local/openvas/share/openvas/gsa/classic/img/cpe/a:snort:snort.png;/usr/local/openvas/share/openvas/gsa/classic/img/cpe/a:sourcefire.png;/usr/local/openvas/share/openvas/gsa/classic/img/cpe/a:typo3:typo3.png;/usr/local/openvas/share/openvas/gsa/classic/img/cpe/a:wordpress:wordpress.png")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
  FILE(INSTALL DESTINATION "/usr/local/openvas/share/openvas/gsa/classic/img/cpe" TYPE FILE FILES
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/cpe/other.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/cpe/aapachehttp_server.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/cpe/adrupaldrupal.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/cpe/agoogle.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/cpe/agnu.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/cpe/amysqlmysql.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/cpe/aopenbsdopenssh.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/cpe/aotrsotrs.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/cpe/aphpphp.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/cpe/apostgresqlpostgresql.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/cpe/asnortsnort.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/cpe/asourcefire.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/cpe/atypo3typo3.png"
    "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/cpe/awordpresswordpress.png"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/openvas/etc/openvas/gsad_log.conf")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/usr/local/openvas/etc/openvas" TYPE FILE FILES "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/build/src/gsad_log.conf")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/openvas/share/openvas/gsa/classic/cpe-icons.xml")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/usr/local/openvas/share/openvas/gsa/classic" TYPE FILE FILES "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/build/cpe-icons.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/build/src/cmake_install.cmake")
  INCLUDE("/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/build/doc/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

IF(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
ELSE(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
ENDIF(CMAKE_INSTALL_COMPONENT)

FILE(WRITE "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/build/${CMAKE_INSTALL_MANIFEST}" "")
FOREACH(file ${CMAKE_INSTALL_MANIFEST_FILES})
  FILE(APPEND "/home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/build/${CMAKE_INSTALL_MANIFEST}" "${file}\n")
ENDFOREACH(file)
