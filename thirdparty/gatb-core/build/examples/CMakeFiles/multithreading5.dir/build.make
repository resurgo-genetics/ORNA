# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.0

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

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/build

# Include any dependencies generated for this target.
include examples/CMakeFiles/multithreading5.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/multithreading5.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/multithreading5.dir/flags.make

examples/CMakeFiles/multithreading5.dir/tools/multithreading5.cpp.o: examples/CMakeFiles/multithreading5.dir/flags.make
examples/CMakeFiles/multithreading5.dir/tools/multithreading5.cpp.o: ../examples/tools/multithreading5.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object examples/CMakeFiles/multithreading5.dir/tools/multithreading5.cpp.o"
	cd /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/build/examples && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/multithreading5.dir/tools/multithreading5.cpp.o -c /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/examples/tools/multithreading5.cpp

examples/CMakeFiles/multithreading5.dir/tools/multithreading5.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/multithreading5.dir/tools/multithreading5.cpp.i"
	cd /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/build/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/examples/tools/multithreading5.cpp > CMakeFiles/multithreading5.dir/tools/multithreading5.cpp.i

examples/CMakeFiles/multithreading5.dir/tools/multithreading5.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/multithreading5.dir/tools/multithreading5.cpp.s"
	cd /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/build/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/examples/tools/multithreading5.cpp -o CMakeFiles/multithreading5.dir/tools/multithreading5.cpp.s

examples/CMakeFiles/multithreading5.dir/tools/multithreading5.cpp.o.requires:
.PHONY : examples/CMakeFiles/multithreading5.dir/tools/multithreading5.cpp.o.requires

examples/CMakeFiles/multithreading5.dir/tools/multithreading5.cpp.o.provides: examples/CMakeFiles/multithreading5.dir/tools/multithreading5.cpp.o.requires
	$(MAKE) -f examples/CMakeFiles/multithreading5.dir/build.make examples/CMakeFiles/multithreading5.dir/tools/multithreading5.cpp.o.provides.build
.PHONY : examples/CMakeFiles/multithreading5.dir/tools/multithreading5.cpp.o.provides

examples/CMakeFiles/multithreading5.dir/tools/multithreading5.cpp.o.provides.build: examples/CMakeFiles/multithreading5.dir/tools/multithreading5.cpp.o

# Object files for target multithreading5
multithreading5_OBJECTS = \
"CMakeFiles/multithreading5.dir/tools/multithreading5.cpp.o"

# External object files for target multithreading5
multithreading5_EXTERNAL_OBJECTS =

bin/multithreading5: examples/CMakeFiles/multithreading5.dir/tools/multithreading5.cpp.o
bin/multithreading5: examples/CMakeFiles/multithreading5.dir/build.make
bin/multithreading5: lib/libgatbcore.a
bin/multithreading5: lib/libhdf5.a
bin/multithreading5: /usr/lib/x86_64-linux-gnu/libz.so
bin/multithreading5: examples/CMakeFiles/multithreading5.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../bin/multithreading5"
	cd /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/build/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/multithreading5.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/multithreading5.dir/build: bin/multithreading5
.PHONY : examples/CMakeFiles/multithreading5.dir/build

examples/CMakeFiles/multithreading5.dir/requires: examples/CMakeFiles/multithreading5.dir/tools/multithreading5.cpp.o.requires
.PHONY : examples/CMakeFiles/multithreading5.dir/requires

examples/CMakeFiles/multithreading5.dir/clean:
	cd /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/build/examples && $(CMAKE_COMMAND) -P CMakeFiles/multithreading5.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/multithreading5.dir/clean

examples/CMakeFiles/multithreading5.dir/depend:
	cd /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/examples /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/build /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/build/examples /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/build/examples/CMakeFiles/multithreading5.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/multithreading5.dir/depend

