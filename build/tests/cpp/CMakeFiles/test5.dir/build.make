# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.31

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/janani/mole

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/janani/mole/build

# Include any dependencies generated for this target.
include tests/cpp/CMakeFiles/test5.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/cpp/CMakeFiles/test5.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/cpp/CMakeFiles/test5.dir/progress.make

# Include the compile flags for this target's objects.
include tests/cpp/CMakeFiles/test5.dir/flags.make

tests/cpp/CMakeFiles/test5.dir/codegen:
.PHONY : tests/cpp/CMakeFiles/test5.dir/codegen

tests/cpp/CMakeFiles/test5.dir/test5.cpp.o: tests/cpp/CMakeFiles/test5.dir/flags.make
tests/cpp/CMakeFiles/test5.dir/test5.cpp.o: /Users/janani/mole/tests/cpp/test5.cpp
tests/cpp/CMakeFiles/test5.dir/test5.cpp.o: tests/cpp/CMakeFiles/test5.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/janani/mole/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/cpp/CMakeFiles/test5.dir/test5.cpp.o"
	cd /Users/janani/mole/build/tests/cpp && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/cpp/CMakeFiles/test5.dir/test5.cpp.o -MF CMakeFiles/test5.dir/test5.cpp.o.d -o CMakeFiles/test5.dir/test5.cpp.o -c /Users/janani/mole/tests/cpp/test5.cpp

tests/cpp/CMakeFiles/test5.dir/test5.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/test5.dir/test5.cpp.i"
	cd /Users/janani/mole/build/tests/cpp && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/janani/mole/tests/cpp/test5.cpp > CMakeFiles/test5.dir/test5.cpp.i

tests/cpp/CMakeFiles/test5.dir/test5.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/test5.dir/test5.cpp.s"
	cd /Users/janani/mole/build/tests/cpp && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/janani/mole/tests/cpp/test5.cpp -o CMakeFiles/test5.dir/test5.cpp.s

# Object files for target test5
test5_OBJECTS = \
"CMakeFiles/test5.dir/test5.cpp.o"

# External object files for target test5
test5_EXTERNAL_OBJECTS =

tests/cpp/test5: tests/cpp/CMakeFiles/test5.dir/test5.cpp.o
tests/cpp/test5: tests/cpp/CMakeFiles/test5.dir/build.make
tests/cpp/test5: src/cpp/libmole_C++.a
tests/cpp/test5: third_party_install/armadillo-14.2.2/lib/libarmadillo.dylib
tests/cpp/test5: /Library/Developer/CommandLineTools/SDKs/MacOSX11.1.sdk/usr/lib/libblas.tbd
tests/cpp/test5: third_party_install/superlu-5.3.0/lib/libsuperlu.a
tests/cpp/test5: /Library/Developer/CommandLineTools/SDKs/MacOSX11.1.sdk/usr/lib/liblapack.tbd
tests/cpp/test5: tests/cpp/CMakeFiles/test5.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/janani/mole/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test5"
	cd /Users/janani/mole/build/tests/cpp && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test5.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/cpp/CMakeFiles/test5.dir/build: tests/cpp/test5
.PHONY : tests/cpp/CMakeFiles/test5.dir/build

tests/cpp/CMakeFiles/test5.dir/clean:
	cd /Users/janani/mole/build/tests/cpp && $(CMAKE_COMMAND) -P CMakeFiles/test5.dir/cmake_clean.cmake
.PHONY : tests/cpp/CMakeFiles/test5.dir/clean

tests/cpp/CMakeFiles/test5.dir/depend:
	cd /Users/janani/mole/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/janani/mole /Users/janani/mole/tests/cpp /Users/janani/mole/build /Users/janani/mole/build/tests/cpp /Users/janani/mole/build/tests/cpp/CMakeFiles/test5.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : tests/cpp/CMakeFiles/test5.dir/depend

