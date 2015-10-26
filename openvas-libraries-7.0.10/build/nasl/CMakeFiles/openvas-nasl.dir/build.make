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
include nasl/CMakeFiles/openvas-nasl.dir/depend.make

# Include the progress variables for this target.
include nasl/CMakeFiles/openvas-nasl.dir/progress.make

# Include the compile flags for this target's objects.
include nasl/CMakeFiles/openvas-nasl.dir/flags.make

nasl/CMakeFiles/openvas-nasl.dir/nasl.c.o: nasl/CMakeFiles/openvas-nasl.dir/flags.make
nasl/CMakeFiles/openvas-nasl.dir/nasl.c.o: ../nasl/nasl.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object nasl/CMakeFiles/openvas-nasl.dir/nasl.c.o"
	cd /home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/build/nasl && /usr/bin/gcc  -Wl,-rpath,/usr/local/openvas/lib $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/openvas-nasl.dir/nasl.c.o   -c /home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl.c

nasl/CMakeFiles/openvas-nasl.dir/nasl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/openvas-nasl.dir/nasl.c.i"
	cd /home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/build/nasl && /usr/bin/gcc  -Wl,-rpath,/usr/local/openvas/lib $(C_DEFINES) $(C_FLAGS) -E /home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl.c > CMakeFiles/openvas-nasl.dir/nasl.c.i

nasl/CMakeFiles/openvas-nasl.dir/nasl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/openvas-nasl.dir/nasl.c.s"
	cd /home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/build/nasl && /usr/bin/gcc  -Wl,-rpath,/usr/local/openvas/lib $(C_DEFINES) $(C_FLAGS) -S /home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl/nasl.c -o CMakeFiles/openvas-nasl.dir/nasl.c.s

nasl/CMakeFiles/openvas-nasl.dir/nasl.c.o.requires:
.PHONY : nasl/CMakeFiles/openvas-nasl.dir/nasl.c.o.requires

nasl/CMakeFiles/openvas-nasl.dir/nasl.c.o.provides: nasl/CMakeFiles/openvas-nasl.dir/nasl.c.o.requires
	$(MAKE) -f nasl/CMakeFiles/openvas-nasl.dir/build.make nasl/CMakeFiles/openvas-nasl.dir/nasl.c.o.provides.build
.PHONY : nasl/CMakeFiles/openvas-nasl.dir/nasl.c.o.provides

nasl/CMakeFiles/openvas-nasl.dir/nasl.c.o.provides.build: nasl/CMakeFiles/openvas-nasl.dir/nasl.c.o

# Object files for target openvas-nasl
openvas__nasl_OBJECTS = \
"CMakeFiles/openvas-nasl.dir/nasl.c.o"

# External object files for target openvas-nasl
openvas__nasl_EXTERNAL_OBJECTS =

nasl/openvas-nasl: nasl/CMakeFiles/openvas-nasl.dir/nasl.c.o
nasl/openvas-nasl: nasl/CMakeFiles/openvas-nasl.dir/build.make
nasl/openvas-nasl: misc/libopenvas_misc.so.7.0.10
nasl/openvas-nasl: nasl/libopenvas_nasl.so.7.0.10
nasl/openvas-nasl: base/libopenvas_base.so.7.0.10
nasl/openvas-nasl: misc/libopenvas_misc.so.7.0.10
nasl/openvas-nasl: base/libopenvas_base.so.7.0.10
nasl/openvas-nasl: nasl/CMakeFiles/openvas-nasl.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable openvas-nasl"
	cd /home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/build/nasl && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/openvas-nasl.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
nasl/CMakeFiles/openvas-nasl.dir/build: nasl/openvas-nasl
.PHONY : nasl/CMakeFiles/openvas-nasl.dir/build

nasl/CMakeFiles/openvas-nasl.dir/requires: nasl/CMakeFiles/openvas-nasl.dir/nasl.c.o.requires
.PHONY : nasl/CMakeFiles/openvas-nasl.dir/requires

nasl/CMakeFiles/openvas-nasl.dir/clean:
	cd /home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/build/nasl && $(CMAKE_COMMAND) -P CMakeFiles/openvas-nasl.dir/cmake_clean.cmake
.PHONY : nasl/CMakeFiles/openvas-nasl.dir/clean

nasl/CMakeFiles/openvas-nasl.dir/depend:
	cd /home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10 /home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/nasl /home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/build /home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/build/nasl /home/peterwang/OpenVAS_Source/openvas-libraries-7.0.10/build/nasl/CMakeFiles/openvas-nasl.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : nasl/CMakeFiles/openvas-nasl.dir/depend

