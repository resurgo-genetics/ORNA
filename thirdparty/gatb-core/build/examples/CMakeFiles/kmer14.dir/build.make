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
include examples/CMakeFiles/kmer14.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/kmer14.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/kmer14.dir/flags.make

examples/CMakeFiles/kmer14.dir/kmer/kmer14.cpp.o: examples/CMakeFiles/kmer14.dir/flags.make
examples/CMakeFiles/kmer14.dir/kmer/kmer14.cpp.o: ../examples/kmer/kmer14.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object examples/CMakeFiles/kmer14.dir/kmer/kmer14.cpp.o"
	cd /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/build/examples && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/kmer14.dir/kmer/kmer14.cpp.o -c /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/examples/kmer/kmer14.cpp

examples/CMakeFiles/kmer14.dir/kmer/kmer14.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kmer14.dir/kmer/kmer14.cpp.i"
	cd /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/build/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/examples/kmer/kmer14.cpp > CMakeFiles/kmer14.dir/kmer/kmer14.cpp.i

examples/CMakeFiles/kmer14.dir/kmer/kmer14.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kmer14.dir/kmer/kmer14.cpp.s"
	cd /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/build/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/examples/kmer/kmer14.cpp -o CMakeFiles/kmer14.dir/kmer/kmer14.cpp.s

examples/CMakeFiles/kmer14.dir/kmer/kmer14.cpp.o.requires:
.PHONY : examples/CMakeFiles/kmer14.dir/kmer/kmer14.cpp.o.requires

examples/CMakeFiles/kmer14.dir/kmer/kmer14.cpp.o.provides: examples/CMakeFiles/kmer14.dir/kmer/kmer14.cpp.o.requires
	$(MAKE) -f examples/CMakeFiles/kmer14.dir/build.make examples/CMakeFiles/kmer14.dir/kmer/kmer14.cpp.o.provides.build
.PHONY : examples/CMakeFiles/kmer14.dir/kmer/kmer14.cpp.o.provides

examples/CMakeFiles/kmer14.dir/kmer/kmer14.cpp.o.provides.build: examples/CMakeFiles/kmer14.dir/kmer/kmer14.cpp.o

# Object files for target kmer14
kmer14_OBJECTS = \
"CMakeFiles/kmer14.dir/kmer/kmer14.cpp.o"

# External object files for target kmer14
kmer14_EXTERNAL_OBJECTS =

bin/kmer14: examples/CMakeFiles/kmer14.dir/kmer/kmer14.cpp.o
bin/kmer14: examples/CMakeFiles/kmer14.dir/build.make
bin/kmer14: lib/libgatbcore.a
bin/kmer14: lib/libhdf5.a
bin/kmer14: /usr/lib/x86_64-linux-gnu/libz.so
bin/kmer14: examples/CMakeFiles/kmer14.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../bin/kmer14"
	cd /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/build/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/kmer14.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/kmer14.dir/build: bin/kmer14
.PHONY : examples/CMakeFiles/kmer14.dir/build

examples/CMakeFiles/kmer14.dir/requires: examples/CMakeFiles/kmer14.dir/kmer/kmer14.cpp.o.requires
.PHONY : examples/CMakeFiles/kmer14.dir/requires

examples/CMakeFiles/kmer14.dir/clean:
	cd /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/build/examples && $(CMAKE_COMMAND) -P CMakeFiles/kmer14.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/kmer14.dir/clean

examples/CMakeFiles/kmer14.dir/depend:
	cd /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/examples /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/build /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/build/examples /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/build/examples/CMakeFiles/kmer14.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/kmer14.dir/depend

