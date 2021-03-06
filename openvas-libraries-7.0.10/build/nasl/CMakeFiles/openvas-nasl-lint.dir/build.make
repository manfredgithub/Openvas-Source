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
CMAKE_SOURCE_DIR = /home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/build

# Include any dependencies generated for this target.
include nasl/CMakeFiles/openvas-nasl-lint.dir/depend.make

# Include the progress variables for this target.
include nasl/CMakeFiles/openvas-nasl-lint.dir/progress.make

# Include the compile flags for this target's objects.
include nasl/CMakeFiles/openvas-nasl-lint.dir/flags.make

nasl/CMakeFiles/openvas-nasl-lint.dir/nasl-lint.c.o: nasl/CMakeFiles/openvas-nasl-lint.dir/flags.make
nasl/CMakeFiles/openvas-nasl-lint.dir/nasl-lint.c.o: ../nasl/nasl-lint.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object nasl/CMakeFiles/openvas-nasl-lint.dir/nasl-lint.c.o"
	cd /home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/build/nasl && /usr/bin/gcc  -Wl,-rpath,/usr/local/openvas/lib $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/openvas-nasl-lint.dir/nasl-lint.c.o   -c /home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl-lint.c

nasl/CMakeFiles/openvas-nasl-lint.dir/nasl-lint.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/openvas-nasl-lint.dir/nasl-lint.c.i"
	cd /home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/build/nasl && /usr/bin/gcc  -Wl,-rpath,/usr/local/openvas/lib $(C_DEFINES) $(C_FLAGS) -E /home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl-lint.c > CMakeFiles/openvas-nasl-lint.dir/nasl-lint.c.i

nasl/CMakeFiles/openvas-nasl-lint.dir/nasl-lint.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/openvas-nasl-lint.dir/nasl-lint.c.s"
	cd /home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/build/nasl && /usr/bin/gcc  -Wl,-rpath,/usr/local/openvas/lib $(C_DEFINES) $(C_FLAGS) -S /home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl-lint.c -o CMakeFiles/openvas-nasl-lint.dir/nasl-lint.c.s

nasl/CMakeFiles/openvas-nasl-lint.dir/nasl-lint.c.o.requires:
.PHONY : nasl/CMakeFiles/openvas-nasl-lint.dir/nasl-lint.c.o.requires

nasl/CMakeFiles/openvas-nasl-lint.dir/nasl-lint.c.o.provides: nasl/CMakeFiles/openvas-nasl-lint.dir/nasl-lint.c.o.requires
	$(MAKE) -f nasl/CMakeFiles/openvas-nasl-lint.dir/build.make nasl/CMakeFiles/openvas-nasl-lint.dir/nasl-lint.c.o.provides.build
.PHONY : nasl/CMakeFiles/openvas-nasl-lint.dir/nasl-lint.c.o.provides

nasl/CMakeFiles/openvas-nasl-lint.dir/nasl-lint.c.o.provides.build: nasl/CMakeFiles/openvas-nasl-lint.dir/nasl-lint.c.o

# Object files for target openvas-nasl-lint
openvas__nasl__lint_OBJECTS = \
"CMakeFiles/openvas-nasl-lint.dir/nasl-lint.c.o"

# External object files for target openvas-nasl-lint
openvas__nasl__lint_EXTERNAL_OBJECTS =

nasl/openvas-nasl-lint: nasl/CMakeFiles/openvas-nasl-lint.dir/nasl-lint.c.o
nasl/openvas-nasl-lint: nasl/CMakeFiles/openvas-nasl-lint.dir/build.make
nasl/openvas-nasl-lint: misc/libopenvas_misc.so.7.0.10
nasl/openvas-nasl-lint: nasl/libopenvas_nasl.so.7.0.10
nasl/openvas-nasl-lint: base/libopenvas_base.so.7.0.10
nasl/openvas-nasl-lint: misc/libopenvas_misc.so.7.0.10
nasl/openvas-nasl-lint: base/libopenvas_base.so.7.0.10
nasl/openvas-nasl-lint: nasl/CMakeFiles/openvas-nasl-lint.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable openvas-nasl-lint"
	cd /home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/build/nasl && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/openvas-nasl-lint.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
nasl/CMakeFiles/openvas-nasl-lint.dir/build: nasl/openvas-nasl-lint
.PHONY : nasl/CMakeFiles/openvas-nasl-lint.dir/build

nasl/CMakeFiles/openvas-nasl-lint.dir/requires: nasl/CMakeFiles/openvas-nasl-lint.dir/nasl-lint.c.o.requires
.PHONY : nasl/CMakeFiles/openvas-nasl-lint.dir/requires

nasl/CMakeFiles/openvas-nasl-lint.dir/clean:
	cd /home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/build/nasl && $(CMAKE_COMMAND) -P CMakeFiles/openvas-nasl-lint.dir/cmake_clean.cmake
.PHONY : nasl/CMakeFiles/openvas-nasl-lint.dir/clean

nasl/CMakeFiles/openvas-nasl-lint.dir/depend:
	cd /home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10 /home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl /home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/build /home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/build/nasl /home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/build/nasl/CMakeFiles/openvas-nasl-lint.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : nasl/CMakeFiles/openvas-nasl-lint.dir/depend

