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
include examples/CMakeFiles/debruijn24.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/debruijn24.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/debruijn24.dir/flags.make

examples/CMakeFiles/debruijn24.dir/debruijn/debruijn24.cpp.o: examples/CMakeFiles/debruijn24.dir/flags.make
examples/CMakeFiles/debruijn24.dir/debruijn/debruijn24.cpp.o: ../examples/debruijn/debruijn24.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object examples/CMakeFiles/debruijn24.dir/debruijn/debruijn24.cpp.o"
	cd /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/build/examples && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/debruijn24.dir/debruijn/debruijn24.cpp.o -c /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/examples/debruijn/debruijn24.cpp

examples/CMakeFiles/debruijn24.dir/debruijn/debruijn24.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/debruijn24.dir/debruijn/debruijn24.cpp.i"
	cd /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/build/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/examples/debruijn/debruijn24.cpp > CMakeFiles/debruijn24.dir/debruijn/debruijn24.cpp.i

examples/CMakeFiles/debruijn24.dir/debruijn/debruijn24.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/debruijn24.dir/debruijn/debruijn24.cpp.s"
	cd /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/build/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/examples/debruijn/debruijn24.cpp -o CMakeFiles/debruijn24.dir/debruijn/debruijn24.cpp.s

examples/CMakeFiles/debruijn24.dir/debruijn/debruijn24.cpp.o.requires:
.PHONY : examples/CMakeFiles/debruijn24.dir/debruijn/debruijn24.cpp.o.requires

examples/CMakeFiles/debruijn24.dir/debruijn/debruijn24.cpp.o.provides: examples/CMakeFiles/debruijn24.dir/debruijn/debruijn24.cpp.o.requires
	$(MAKE) -f examples/CMakeFiles/debruijn24.dir/build.make examples/CMakeFiles/debruijn24.dir/debruijn/debruijn24.cpp.o.provides.build
.PHONY : examples/CMakeFiles/debruijn24.dir/debruijn/debruijn24.cpp.o.provides

examples/CMakeFiles/debruijn24.dir/debruijn/debruijn24.cpp.o.provides.build: examples/CMakeFiles/debruijn24.dir/debruijn/debruijn24.cpp.o

# Object files for target debruijn24
debruijn24_OBJECTS = \
"CMakeFiles/debruijn24.dir/debruijn/debruijn24.cpp.o"

# External object files for target debruijn24
debruijn24_EXTERNAL_OBJECTS =

bin/debruijn24: examples/CMakeFiles/debruijn24.dir/debruijn/debruijn24.cpp.o
bin/debruijn24: examples/CMakeFiles/debruijn24.dir/build.make
bin/debruijn24: lib/libgatbcore.a
bin/debruijn24: lib/libhdf5.a
bin/debruijn24: /usr/lib/x86_64-linux-gnu/libz.so
bin/debruijn24: examples/CMakeFiles/debruijn24.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../bin/debruijn24"
	cd /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/build/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/debruijn24.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/debruijn24.dir/build: bin/debruijn24
.PHONY : examples/CMakeFiles/debruijn24.dir/build

examples/CMakeFiles/debruijn24.dir/requires: examples/CMakeFiles/debruijn24.dir/debruijn/debruijn24.cpp.o.requires
.PHONY : examples/CMakeFiles/debruijn24.dir/requires

examples/CMakeFiles/debruijn24.dir/clean:
	cd /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/build/examples && $(CMAKE_COMMAND) -P CMakeFiles/debruijn24.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/debruijn24.dir/clean

examples/CMakeFiles/debruijn24.dir/depend:
	cd /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/examples /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/build /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/build/examples /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/build/examples/CMakeFiles/debruijn24.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/debruijn24.dir/depend

