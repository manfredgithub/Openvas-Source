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

# Include any dependencies generated for this target.
include nagios/CMakeFiles/check_omp.dir/depend.make

# Include the progress variables for this target.
include nagios/CMakeFiles/check_omp.dir/progress.make

# Include the compile flags for this target's objects.
include nagios/CMakeFiles/check_omp.dir/flags.make

nagios/CMakeFiles/check_omp.dir/check_omp.c.o: nagios/CMakeFiles/check_omp.dir/flags.make
nagios/CMakeFiles/check_omp.dir/check_omp.c.o: ../nagios/check_omp.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/peterwang/OpenVAS_Source/openvas-cli-1.3.1/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object nagios/CMakeFiles/check_omp.dir/check_omp.c.o"
	cd /home/peterwang/OpenVAS_Source/openvas-cli-1.3.1/build/nagios && /usr/bin/gcc  -Wl,-rpath,/usr/local/openvas/lib64 -Wl,-rpath,/usr/local/openvas/lib $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/check_omp.dir/check_omp.c.o   -c /home/peterwang/OpenVAS_Source/openvas-cli-1.3.1/nagios/check_omp.c

nagios/CMakeFiles/check_omp.dir/check_omp.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/check_omp.dir/check_omp.c.i"
	cd /home/peterwang/OpenVAS_Source/openvas-cli-1.3.1/build/nagios && /usr/bin/gcc  -Wl,-rpath,/usr/local/openvas/lib64 -Wl,-rpath,/usr/local/openvas/lib $(C_DEFINES) $(C_FLAGS) -E /home/peterwang/OpenVAS_Source/openvas-cli-1.3.1/nagios/check_omp.c > CMakeFiles/check_omp.dir/check_omp.c.i

nagios/CMakeFiles/check_omp.dir/check_omp.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/check_omp.dir/check_omp.c.s"
	cd /home/peterwang/OpenVAS_Source/openvas-cli-1.3.1/build/nagios && /usr/bin/gcc  -Wl,-rpath,/usr/local/openvas/lib64 -Wl,-rpath,/usr/local/openvas/lib $(C_DEFINES) $(C_FLAGS) -S /home/peterwang/OpenVAS_Source/openvas-cli-1.3.1/nagios/check_omp.c -o CMakeFiles/check_omp.dir/check_omp.c.s

nagios/CMakeFiles/check_omp.dir/check_omp.c.o.requires:
.PHONY : nagios/CMakeFiles/check_omp.dir/check_omp.c.o.requires

nagios/CMakeFiles/check_omp.dir/check_omp.c.o.provides: nagios/CMakeFiles/check_omp.dir/check_omp.c.o.requires
	$(MAKE) -f nagios/CMakeFiles/check_omp.dir/build.make nagios/CMakeFiles/check_omp.dir/check_omp.c.o.provides.build
.PHONY : nagios/CMakeFiles/check_omp.dir/check_omp.c.o.provides

nagios/CMakeFiles/check_omp.dir/check_omp.c.o.provides.build: nagios/CMakeFiles/check_omp.dir/check_omp.c.o

# Object files for target check_omp
check_omp_OBJECTS = \
"CMakeFiles/check_omp.dir/check_omp.c.o"

# External object files for target check_omp
check_omp_EXTERNAL_OBJECTS =

nagios/check_omp: nagios/CMakeFiles/check_omp.dir/check_omp.c.o
nagios/check_omp: nagios/CMakeFiles/check_omp.dir/build.make
nagios/check_omp: nagios/CMakeFiles/check_omp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable check_omp"
	cd /home/peterwang/OpenVAS_Source/openvas-cli-1.3.1/build/nagios && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/check_omp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
nagios/CMakeFiles/check_omp.dir/build: nagios/check_omp
.PHONY : nagios/CMakeFiles/check_omp.dir/build

nagios/CMakeFiles/check_omp.dir/requires: nagios/CMakeFiles/check_omp.dir/check_omp.c.o.requires
.PHONY : nagios/CMakeFiles/check_omp.dir/requires

nagios/CMakeFiles/check_omp.dir/clean:
	cd /home/peterwang/OpenVAS_Source/openvas-cli-1.3.1/build/nagios && $(CMAKE_COMMAND) -P CMakeFiles/check_omp.dir/cmake_clean.cmake
.PHONY : nagios/CMakeFiles/check_omp.dir/clean

nagios/CMakeFiles/check_omp.dir/depend:
	cd /home/peterwang/OpenVAS_Source/openvas-cli-1.3.1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/peterwang/OpenVAS_Source/openvas-cli-1.3.1 /home/peterwang/OpenVAS_Source/openvas-cli-1.3.1/nagios /home/peterwang/OpenVAS_Source/openvas-cli-1.3.1/build /home/peterwang/OpenVAS_Source/openvas-cli-1.3.1/build/nagios /home/peterwang/OpenVAS_Source/openvas-cli-1.3.1/build/nagios/CMakeFiles/check_omp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : nagios/CMakeFiles/check_omp.dir/depend

