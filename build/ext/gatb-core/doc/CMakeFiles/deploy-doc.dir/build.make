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
CMAKE_SOURCE_DIR = /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/build

# Utility rule file for deploy-doc.

# Include the progress variables for this target.
include ext/gatb-core/doc/CMakeFiles/deploy-doc.dir/progress.make

ext/gatb-core/doc/CMakeFiles/deploy-doc:
	cd /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/build/ext/gatb-core/doc && tar -zcf /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/build/doc/doc.tgz -C /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/build/doc/html .
	cd /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/build/ext/gatb-core/doc && scp /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/build/doc/doc.tgz ddurai@scm.gforge.inria.fr:/home/groups/gatb-core/
	cd /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/build/ext/gatb-core/doc && ssh ddurai@scm.gforge.inria.fr rm\ -rf\ /home/groups/gatb-core/htdocs/doc/api/*
	cd /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/build/ext/gatb-core/doc && ssh ddurai@scm.gforge.inria.fr tar\ -xf\ /home/groups/gatb-core/doc.tgz\ --no-overwrite-dir\ -C\ /home/groups/gatb-core/htdocs/doc/api

deploy-doc: ext/gatb-core/doc/CMakeFiles/deploy-doc
deploy-doc: ext/gatb-core/doc/CMakeFiles/deploy-doc.dir/build.make
.PHONY : deploy-doc

# Rule to build all files generated by this target.
ext/gatb-core/doc/CMakeFiles/deploy-doc.dir/build: deploy-doc
.PHONY : ext/gatb-core/doc/CMakeFiles/deploy-doc.dir/build

ext/gatb-core/doc/CMakeFiles/deploy-doc.dir/clean:
	cd /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/build/ext/gatb-core/doc && $(CMAKE_COMMAND) -P CMakeFiles/deploy-doc.dir/cmake_clean.cmake
.PHONY : ext/gatb-core/doc/CMakeFiles/deploy-doc.dir/clean

ext/gatb-core/doc/CMakeFiles/deploy-doc.dir/depend:
	cd /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/thirdparty/gatb-core/doc /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/build /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/build/ext/gatb-core/doc /MMCI/MS/DeNovoAssembly2/work/ReREAD/Sample_ORNA/ORNA/build/ext/gatb-core/doc/CMakeFiles/deploy-doc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ext/gatb-core/doc/CMakeFiles/deploy-doc.dir/depend

