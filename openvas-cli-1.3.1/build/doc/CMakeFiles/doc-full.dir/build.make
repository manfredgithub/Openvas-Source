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
CMAKE_SOURCE_DIR = /home/peterwang/OpenVAS_Source/openvas-cli-1.3.1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/peterwang/OpenVAS_Source/openvas-cli-1.3.1/build

# Utility rule file for doc-full.

# Include the progress variables for this target.
include doc/CMakeFiles/doc-full.dir/progress.make

doc/CMakeFiles/doc-full: doc/Doxyfile_full
doc/CMakeFiles/doc-full: doc/.built-html_full
	$(CMAKE_COMMAND) -E cmake_progress_report /home/peterwang/OpenVAS_Source/openvas-cli-1.3.1/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Building documentation..."

doc/.built-html_full: doc/Doxyfile_full
	$(CMAKE_COMMAND) -E cmake_progress_report /home/peterwang/OpenVAS_Source/openvas-cli-1.3.1/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating .built-html_full"
	cd /home/peterwang/OpenVAS_Source/openvas-cli-1.3.1/build/doc && sh -c "/usr/bin/doxygen /home/peterwang/OpenVAS_Source/openvas-cli-1.3.1/build/doc/Doxyfile_full && touch /home/peterwang/OpenVAS_Source/openvas-cli-1.3.1/build/doc/.built-html_full;"

doc-full: doc/CMakeFiles/doc-full
doc-full: doc/.built-html_full
doc-full: doc/CMakeFiles/doc-full.dir/build.make
.PHONY : doc-full

# Rule to build all files generated by this target.
doc/CMakeFiles/doc-full.dir/build: doc-full
.PHONY : doc/CMakeFiles/doc-full.dir/build

doc/CMakeFiles/doc-full.dir/clean:
	cd /home/peterwang/OpenVAS_Source/openvas-cli-1.3.1/build/doc && $(CMAKE_COMMAND) -P CMakeFiles/doc-full.dir/cmake_clean.cmake
.PHONY : doc/CMakeFiles/doc-full.dir/clean

doc/CMakeFiles/doc-full.dir/depend:
	cd /home/peterwang/OpenVAS_Source/openvas-cli-1.3.1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/peterwang/OpenVAS_Source/openvas-cli-1.3.1 /home/peterwang/OpenVAS_Source/openvas-cli-1.3.1/doc /home/peterwang/OpenVAS_Source/openvas-cli-1.3.1/build /home/peterwang/OpenVAS_Source/openvas-cli-1.3.1/build/doc /home/peterwang/OpenVAS_Source/openvas-cli-1.3.1/build/doc/CMakeFiles/doc-full.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : doc/CMakeFiles/doc-full.dir/depend

