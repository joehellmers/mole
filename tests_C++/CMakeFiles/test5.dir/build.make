# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

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
CMAKE_COMMAND = /home/jlhellmers/spack/opt/spack/linux-ubuntu24.04-m1/gcc-13.2.0/cmake-3.30.1-5kzvkqzikmsdjxol3x77ebbxgvhdhofc/bin/cmake

# The command to remove a file.
RM = /home/jlhellmers/spack/opt/spack/linux-ubuntu24.04-m1/gcc-13.2.0/cmake-3.30.1-5kzvkqzikmsdjxol3x77ebbxgvhdhofc/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jlhellmers/appsdev/mole

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jlhellmers/appsdev/mole

# Include any dependencies generated for this target.
include tests_C++/CMakeFiles/test5.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests_C++/CMakeFiles/test5.dir/compiler_depend.make

# Include the progress variables for this target.
include tests_C++/CMakeFiles/test5.dir/progress.make

# Include the compile flags for this target's objects.
include tests_C++/CMakeFiles/test5.dir/flags.make

tests_C++/CMakeFiles/test5.dir/test5.cpp.o: tests_C++/CMakeFiles/test5.dir/flags.make
tests_C++/CMakeFiles/test5.dir/test5.cpp.o: tests_C++/test5.cpp
tests_C++/CMakeFiles/test5.dir/test5.cpp.o: tests_C++/CMakeFiles/test5.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/jlhellmers/appsdev/mole/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests_C++/CMakeFiles/test5.dir/test5.cpp.o"
	cd /home/jlhellmers/appsdev/mole/tests_C++ && /home/jlhellmers/spack/opt/spack/linux-ubuntu24.04-m1/gcc-13.2.0/nvhpc-24.5-j6uglqyynsx6ikcqkwpvgms62tg2woek/Linux_aarch64/24.5/compilers/bin/nvc++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests_C++/CMakeFiles/test5.dir/test5.cpp.o -MF CMakeFiles/test5.dir/test5.cpp.o.d -o CMakeFiles/test5.dir/test5.cpp.o -c /home/jlhellmers/appsdev/mole/tests_C++/test5.cpp

tests_C++/CMakeFiles/test5.dir/test5.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/test5.dir/test5.cpp.i"
	cd /home/jlhellmers/appsdev/mole/tests_C++ && /home/jlhellmers/spack/opt/spack/linux-ubuntu24.04-m1/gcc-13.2.0/nvhpc-24.5-j6uglqyynsx6ikcqkwpvgms62tg2woek/Linux_aarch64/24.5/compilers/bin/nvc++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jlhellmers/appsdev/mole/tests_C++/test5.cpp > CMakeFiles/test5.dir/test5.cpp.i

tests_C++/CMakeFiles/test5.dir/test5.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/test5.dir/test5.cpp.s"
	cd /home/jlhellmers/appsdev/mole/tests_C++ && /home/jlhellmers/spack/opt/spack/linux-ubuntu24.04-m1/gcc-13.2.0/nvhpc-24.5-j6uglqyynsx6ikcqkwpvgms62tg2woek/Linux_aarch64/24.5/compilers/bin/nvc++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jlhellmers/appsdev/mole/tests_C++/test5.cpp -o CMakeFiles/test5.dir/test5.cpp.s

# Object files for target test5
test5_OBJECTS = \
"CMakeFiles/test5.dir/test5.cpp.o"

# External object files for target test5
test5_EXTERNAL_OBJECTS =

tests_C++/test5: tests_C++/CMakeFiles/test5.dir/test5.cpp.o
tests_C++/test5: tests_C++/CMakeFiles/test5.dir/build.make
tests_C++/test5: mole_C++/libmole_C++.a
tests_C++/test5: /home/jlhellmers/spack/opt/spack/linux-ubuntu24.04-m1/gcc-13.2.0/armadillo-12.8.3-k4jtmtwtzsgwee56mk7k2pogdjjn2evm/lib/libarmadillo.so
tests_C++/test5: /usr/lib/aarch64-linux-gnu/libopenblas.so
tests_C++/test5: /home/jlhellmers/spack/opt/spack/linux-ubuntu24.04-m1/gcc-13.2.0/superlu-5.3.0-k7zsw2ojjbw6s33aawsldugmwqxlnkje/lib/libsuperlu.a
tests_C++/test5: /usr/lib/aarch64-linux-gnu/liblapack.so
tests_C++/test5: tests_C++/CMakeFiles/test5.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/jlhellmers/appsdev/mole/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test5"
	cd /home/jlhellmers/appsdev/mole/tests_C++ && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test5.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests_C++/CMakeFiles/test5.dir/build: tests_C++/test5
.PHONY : tests_C++/CMakeFiles/test5.dir/build

tests_C++/CMakeFiles/test5.dir/clean:
	cd /home/jlhellmers/appsdev/mole/tests_C++ && $(CMAKE_COMMAND) -P CMakeFiles/test5.dir/cmake_clean.cmake
.PHONY : tests_C++/CMakeFiles/test5.dir/clean

tests_C++/CMakeFiles/test5.dir/depend:
	cd /home/jlhellmers/appsdev/mole && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jlhellmers/appsdev/mole /home/jlhellmers/appsdev/mole/tests_C++ /home/jlhellmers/appsdev/mole /home/jlhellmers/appsdev/mole/tests_C++ /home/jlhellmers/appsdev/mole/tests_C++/CMakeFiles/test5.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : tests_C++/CMakeFiles/test5.dir/depend

