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
CMAKE_SOURCE_DIR = /home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/build

# Utility rule file for cpe-icon-dict.

# Include the progress variables for this target.
include CMakeFiles/cpe-icon-dict.dir/progress.make

CMakeFiles/cpe-icon-dict:
	$(CMAKE_COMMAND) -E cmake_progress_report /home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating CPE icon dictionary"
	cd /home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/tools && sh /home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/tools/generate-cpe-icon-dict.sh --src_path /home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/src/html/classic/img/cpe > /home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/build/cpe-icons.xml

cpe-icon-dict: CMakeFiles/cpe-icon-dict
cpe-icon-dict: CMakeFiles/cpe-icon-dict.dir/build.make
.PHONY : cpe-icon-dict

# Rule to build all files generated by this target.
CMakeFiles/cpe-icon-dict.dir/build: cpe-icon-dict
.PHONY : CMakeFiles/cpe-icon-dict.dir/build

CMakeFiles/cpe-icon-dict.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cpe-icon-dict.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cpe-icon-dict.dir/clean

CMakeFiles/cpe-icon-dict.dir/depend:
	cd /home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7 /home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7 /home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/build /home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/build /home/peterwang/OpenVAS_Source/greenbone-security-assistant-5.0.7/build/CMakeFiles/cpe-icon-dict.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cpe-icon-dict.dir/depend

