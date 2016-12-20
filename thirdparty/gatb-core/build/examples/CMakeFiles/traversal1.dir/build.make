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
include examples/CMakeFiles/traversal1.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/traversal1.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/traversal1.dir/flags.make

examples/CMakeFiles/traversal1.dir/debruijn/traversal1.cpp.o: examples/CMakeFiles/traversal1.dir/flags.make
examples/CMakeFiles/traversal1.dir/debruijn/traversal1.cpp.o: ../examples/debruijn/traversal1.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object examples/CMakeFiles/traversal1.dir/debruijn/traversal1.cpp.o"
	cd /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/build/examples && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/traversal1.dir/debruijn/traversal1.cpp.o -c /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/examples/debruijn/traversal1.cpp

examples/CMakeFiles/traversal1.dir/debruijn/traversal1.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/traversal1.dir/debruijn/traversal1.cpp.i"
	cd /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/build/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/examples/debruijn/traversal1.cpp > CMakeFiles/traversal1.dir/debruijn/traversal1.cpp.i

examples/CMakeFiles/traversal1.dir/debruijn/traversal1.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/traversal1.dir/debruijn/traversal1.cpp.s"
	cd /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/build/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/examples/debruijn/traversal1.cpp -o CMakeFiles/traversal1.dir/debruijn/traversal1.cpp.s

examples/CMakeFiles/traversal1.dir/debruijn/traversal1.cpp.o.requires:
.PHONY : examples/CMakeFiles/traversal1.dir/debruijn/traversal1.cpp.o.requires

examples/CMakeFiles/traversal1.dir/debruijn/traversal1.cpp.o.provides: examples/CMakeFiles/traversal1.dir/debruijn/traversal1.cpp.o.requires
	$(MAKE) -f examples/CMakeFiles/traversal1.dir/build.make examples/CMakeFiles/traversal1.dir/debruijn/traversal1.cpp.o.provides.build
.PHONY : examples/CMakeFiles/traversal1.dir/debruijn/traversal1.cpp.o.provides

examples/CMakeFiles/traversal1.dir/debruijn/traversal1.cpp.o.provides.build: examples/CMakeFiles/traversal1.dir/debruijn/traversal1.cpp.o

# Object files for target traversal1
traversal1_OBJECTS = \
"CMakeFiles/traversal1.dir/debruijn/traversal1.cpp.o"

# External object files for target traversal1
traversal1_EXTERNAL_OBJECTS =

bin/traversal1: examples/CMakeFiles/traversal1.dir/debruijn/traversal1.cpp.o
bin/traversal1: examples/CMakeFiles/traversal1.dir/build.make
bin/traversal1: lib/libgatbcore.a
bin/traversal1: lib/libhdf5.a
bin/traversal1: /usr/lib/x86_64-linux-gnu/libz.so
bin/traversal1: examples/CMakeFiles/traversal1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../bin/traversal1"
	cd /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/build/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/traversal1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/traversal1.dir/build: bin/traversal1
.PHONY : examples/CMakeFiles/traversal1.dir/build

examples/CMakeFiles/traversal1.dir/requires: examples/CMakeFiles/traversal1.dir/debruijn/traversal1.cpp.o.requires
.PHONY : examples/CMakeFiles/traversal1.dir/requires

examples/CMakeFiles/traversal1.dir/clean:
	cd /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/build/examples && $(CMAKE_COMMAND) -P CMakeFiles/traversal1.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/traversal1.dir/clean

examples/CMakeFiles/traversal1.dir/depend:
	cd /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/examples /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/build /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/build/examples /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/build/examples/CMakeFiles/traversal1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/traversal1.dir/depend

