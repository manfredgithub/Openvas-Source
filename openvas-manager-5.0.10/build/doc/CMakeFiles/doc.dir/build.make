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
CMAKE_SOURCE_DIR = /home/peterwang/OpenVAS_Source/openvas-manager-5.0.10

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/build

# Utility rule file for doc.

# Include the progress variables for this target.
include doc/CMakeFiles/doc.dir/progress.make

doc/CMakeFiles/doc: doc/openvasmd.8
doc/CMakeFiles/doc: doc/Doxyfile
doc/CMakeFiles/doc: doc/.built-html
doc/CMakeFiles/doc: doc/.built-html_db
doc/CMakeFiles/doc: doc/db.png
doc/CMakeFiles/doc: doc/omp.rnc
doc/CMakeFiles/doc: doc/omp.html
	$(CMAKE_COMMAND) -E cmake_progress_report /home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Building documentation..."

doc/openvasmd.8:
	$(CMAKE_COMMAND) -E cmake_progress_report /home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating openvasmd.8"
	cd /home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/build/doc && echo [Error:\ xmltoman\ required\ to\ see\ manpage\ here] > openvasmd.8

doc/.built-html: doc/openvasmd.html
doc/.built-html: doc/Doxyfile
	$(CMAKE_COMMAND) -E cmake_progress_report /home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating .built-html"
	cd /home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/build/doc && sh -c "/usr/bin/doxygen /home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/build/doc/Doxyfile && touch /home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/build/doc/.built-html;"

doc/.built-html_db:
	$(CMAKE_COMMAND) -E cmake_progress_report /home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating .built-html_db"
	cd /home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/build/doc && sh -c "echo \"[Error: sqlt, from SQLFairy, required to see database here]\" > db.html && touch .built-html_db;"

doc/db.png:
	$(CMAKE_COMMAND) -E cmake_progress_report /home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating db.png"
	cd /home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/build/doc && sh -c "touch db.png "

doc/omp.rnc: ../src/schema_formats/XML/OMP.xml
doc/omp.rnc: ../src/schema_formats/RNC/generate
doc/omp.rnc: ../src/schema_formats/RNC/RNC.xsl
doc/omp.rnc: ../src/schema_formats/RNC/rnc.xsl
	$(CMAKE_COMMAND) -E cmake_progress_report /home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/build/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating omp.rnc"
	cd /home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/build/doc && sh -c "cd /home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/src/schema_formats/RNC && xsltproc ./RNC.xsl ../XML/OMP.xml > /home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/build/doc/omp.rnc;"

doc/omp.html: ../src/schema_formats/XML/OMP.xml
doc/omp.html: ../src/schema_formats/HTML/generate
doc/omp.html: ../src/schema_formats/HTML/HTML.xsl
doc/omp.html: ../src/schema_formats/HTML/rnc.xsl
	$(CMAKE_COMMAND) -E cmake_progress_report /home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/build/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating omp.html"
	cd /home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/build/doc && sh -c "cd /home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/src/schema_formats/HTML && xsltproc ./HTML.xsl ../XML/OMP.xml > /home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/build/doc/omp.html;"

doc/openvasmd.html:
	$(CMAKE_COMMAND) -E cmake_progress_report /home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/build/CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating openvasmd.html"
	cd /home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/build/doc && echo [Error:\ xmlmantohtml\ required\ to\ see\ manpage\ here] > openvasmd.html

doc: doc/CMakeFiles/doc
doc: doc/openvasmd.8
doc: doc/.built-html
doc: doc/.built-html_db
doc: doc/db.png
doc: doc/omp.rnc
doc: doc/omp.html
doc: doc/openvasmd.html
doc: doc/CMakeFiles/doc.dir/build.make
.PHONY : doc

# Rule to build all files generated by this target.
doc/CMakeFiles/doc.dir/build: doc
.PHONY : doc/CMakeFiles/doc.dir/build

doc/CMakeFiles/doc.dir/clean:
	cd /home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/build/doc && $(CMAKE_COMMAND) -P CMakeFiles/doc.dir/cmake_clean.cmake
.PHONY : doc/CMakeFiles/doc.dir/clean

doc/CMakeFiles/doc.dir/depend:
	cd /home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/peterwang/OpenVAS_Source/openvas-manager-5.0.10 /home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/doc /home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/build /home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/build/doc /home/peterwang/OpenVAS_Source/openvas-manager-5.0.10/build/doc/CMakeFiles/doc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : doc/CMakeFiles/doc.dir/depend

