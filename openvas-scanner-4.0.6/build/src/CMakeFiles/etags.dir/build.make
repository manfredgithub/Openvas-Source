# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/peterwang/OpenVAS_Source/openvas-scanner-4.0.6

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/peterwang/OpenVAS_Source/openvas-scanner-4.0.6/build

# Utility rule file for etags.

# Include the progress variables for this target.
include src/CMakeFiles/etags.dir/progress.make

src/CMakeFiles/etags:
	$(CMAKE_COMMAND) -E cmake_progress_report /home/peterwang/OpenVAS_Source/openvas-scanner-4.0.6/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Building TAGS..."
	cd /home/peterwang/OpenVAS_Source/openvas-scanner-4.0.6/build/src && etags attack.c comm.c hosts.c locks.c log.c nasl_plugins.c ntp.c openvassd.c otp.c piic.c pluginlaunch.c pluginload.c pluginscheduler.c plugs_req.c preferences.c processes.c save_kb.c sighand.c utils.c

etags: src/CMakeFiles/etags
etags: src/CMakeFiles/etags.dir/build.make
.PHONY : etags

# Rule to build all files generated by this target.
src/CMakeFiles/etags.dir/build: etags
.PHONY : src/CMakeFiles/etags.dir/build

src/CMakeFiles/etags.dir/clean:
	cd /home/peterwang/OpenVAS_Source/openvas-scanner-4.0.6/build/src && $(CMAKE_COMMAND) -P CMakeFiles/etags.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/etags.dir/clean

src/CMakeFiles/etags.dir/depend:
	cd /home/peterwang/OpenVAS_Source/openvas-scanner-4.0.6/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/peterwang/OpenVAS_Source/openvas-scanner-4.0.6 /home/peterwang/OpenVAS_Source/openvas-scanner-4.0.6/src /home/peterwang/OpenVAS_Source/openvas-scanner-4.0.6/build /home/peterwang/OpenVAS_Source/openvas-scanner-4.0.6/build/src /home/peterwang/OpenVAS_Source/openvas-scanner-4.0.6/build/src/CMakeFiles/etags.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/etags.dir/depend

