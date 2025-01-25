cmake_minimum_required(VERSION 3.10)
project(TopLevelProject VERSION 1.0 LANGUAGES CXX)
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Display the detected C++ compiler ID
message(STATUS "Detected CXX Compiler ID: ${CMAKE_CXX_COMPILER_ID}")

#set CXX_FLAGS
set(CMAKE_CXX_FLAGS "-O3 -Xclang -fopenmp -DARMA_DONT_USE_WRAPPER -DARMA_USE_SUPERLU")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -L/usr/local/Cellar/libomp/19.1.4/lib -lomp")

# Set path for seaching for Spack packages
# set(CMAKE_PREFIX_PATH $ENV{SPACK_ROOT}/opt/spack/linux-ubuntu24.04-m1/gcc-13.2.0/)

#include Directories
include_directories("/usr/local/Cellar/libomp/19.1.4/include")

    
# Required Libraries
find_package(Armadillo 9.800.4 REQUIRED)
find_package(Eigen3 3.3.7 REQUIRED)
find_library(OpenBLAS_LIBRARIES NAMES openblas blas "/usr/lib/x86_64-linux-gnu" REQUIRED)
# Find LAPACK library
find_library(LAPACK_LIBRARY lapack REQUIRED PATHS "/usr/lib" "/usr/lib/x86_64-linux-gnu" "/usr/local/lib" "/usr/local/Cellar/" "/usr/local/Cellar/lapack/3.12.0")
# SuperLU library and headers

find_path(SUPERLU_INCLUDE_DIR slu_ddefs.h PATHS  "/usr/local/include" "/usr/include" "/usr/include/superlu" "/home/jlhellmers/spack/opt/spack/linux-ubuntu24.04-m1/gcc-13.2.0/superlu-5.3.0-k7zsw2ojjbw6s33aawsldugmwqxlnkje/include/" NO_DEFAULT_PATH)
if(NOT SUPERLU_INCLUDE_DIR )
    message(FATAL_ERROR "SuperLU include not found. Please make sure SuperLU is installed.")
else()
    message(STATUS "SuperLU include found at ${SUPERLU_INCLUDE_DIR}")
endif()

find_library(SUPERLU_LIBRARY superlu PATHS "/usr/local/lib" "/usr/lib" "/usr/lib/x86_64-linux-gnu" "/home/jlhellmers/spack/opt/spack/linux-ubuntu24.04-m1/gcc-13.2.0/superlu-5.3.0-k7zsw2ojjbw6s33aawsldugmwqxlnkje/lib/" NO_DEFAULT_PATH)
if(NOT SUPERLU_LIBRARY)
    message(FATAL_ERROR "SuperLU library not found. Please make sure SuperLU is installed.")
else()
    message(STATUS "SuperLU found at ${SUPERLU_LIBRARY}")
endif()


# Include and link directories for all subprojects
include_directories(${ARMADILLO_INCLUDE_DIRS} ${EIGEN3_INCLUDE_DIRS} ${SUPERLU_INCLUDE_DIR} ${LAPACK_INCLUDE_DIR})
set(LINK_LIBS ${ARMADILLO_LIBRARIES} ${OpenBLAS_LIBRARIES} ${SUPERLU_LIBRARY} ${LAPACK_LIBRARY} -lomp)

# Add subdirectories 
add_subdirectory(mole_C++) 
add_subdirectory(tests_C++) 
add_subdirectory(examples_C++) 

# Custom target to build everything 

add_custom_target(all_build DEPENDS mole_C++ tests_C++ examples_C++)
