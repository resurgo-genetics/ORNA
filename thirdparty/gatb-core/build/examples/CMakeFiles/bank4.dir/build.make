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
include examples/CMakeFiles/bank4.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/bank4.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/bank4.dir/flags.make

examples/CMakeFiles/bank4.dir/bank/bank4.cpp.o: examples/CMakeFiles/bank4.dir/flags.make
examples/CMakeFiles/bank4.dir/bank/bank4.cpp.o: ../examples/bank/bank4.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object examples/CMakeFiles/bank4.dir/bank/bank4.cpp.o"
	cd /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/build/examples && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/bank4.dir/bank/bank4.cpp.o -c /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/examples/bank/bank4.cpp

examples/CMakeFiles/bank4.dir/bank/bank4.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bank4.dir/bank/bank4.cpp.i"
	cd /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/build/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/examples/bank/bank4.cpp > CMakeFiles/bank4.dir/bank/bank4.cpp.i

examples/CMakeFiles/bank4.dir/bank/bank4.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bank4.dir/bank/bank4.cpp.s"
	cd /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/build/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/examples/bank/bank4.cpp -o CMakeFiles/bank4.dir/bank/bank4.cpp.s

examples/CMakeFiles/bank4.dir/bank/bank4.cpp.o.requires:
.PHONY : examples/CMakeFiles/bank4.dir/bank/bank4.cpp.o.requires

examples/CMakeFiles/bank4.dir/bank/bank4.cpp.o.provides: examples/CMakeFiles/bank4.dir/bank/bank4.cpp.o.requires
	$(MAKE) -f examples/CMakeFiles/bank4.dir/build.make examples/CMakeFiles/bank4.dir/bank/bank4.cpp.o.provides.build
.PHONY : examples/CMakeFiles/bank4.dir/bank/bank4.cpp.o.provides

examples/CMakeFiles/bank4.dir/bank/bank4.cpp.o.provides.build: examples/CMakeFiles/bank4.dir/bank/bank4.cpp.o

# Object files for target bank4
bank4_OBJECTS = \
"CMakeFiles/bank4.dir/bank/bank4.cpp.o"

# External object files for target bank4
bank4_EXTERNAL_OBJECTS =

bin/bank4: examples/CMakeFiles/bank4.dir/bank/bank4.cpp.o
bin/bank4: examples/CMakeFiles/bank4.dir/build.make
bin/bank4: lib/libgatbcore.a
bin/bank4: lib/libhdf5.a
bin/bank4: /usr/lib/x86_64-linux-gnu/libz.so
bin/bank4: examples/CMakeFiles/bank4.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../bin/bank4"
	cd /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/build/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bank4.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/bank4.dir/build: bin/bank4
.PHONY : examples/CMakeFiles/bank4.dir/build

examples/CMakeFiles/bank4.dir/requires: examples/CMakeFiles/bank4.dir/bank/bank4.cpp.o.requires
.PHONY : examples/CMakeFiles/bank4.dir/requires

examples/CMakeFiles/bank4.dir/clean:
	cd /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/build/examples && $(CMAKE_COMMAND) -P CMakeFiles/bank4.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/bank4.dir/clean

examples/CMakeFiles/bank4.dir/depend:
	cd /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/examples /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/build /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/build/examples /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/build/examples/CMakeFiles/bank4.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/bank4.dir/depend

