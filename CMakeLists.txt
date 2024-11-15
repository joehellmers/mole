cmake_minimum_required(VERSION 3.10)
project(TopLevelProject VERSION 1.0 LANGUAGES CXX)
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED True)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O3 -fopenmp -DARMA_DONT_USE_WRAPPER -DARMA_USE_SUPERLU")



# Required Libraries
find_package(Armadillo 9.800.4 REQUIRED)
find_package(Eigen3 3.3.7 REQUIRED)
find_library(OpenBLAS_LIBRARIES NAMES openblas blas "/usr/lib/x86_64-linux-gnu" REQUIRED)

# SuperLU library and headers
find_path(SUPERLU_INCLUDE_DIR slu_ddefs.h PATHS  "/usr/local/include" "/usr/include" NO_DEFAULT_PATH)
find_library(SUPERLU_LIBRARY superlu PATHS "/usr/local/lib" "/usr/lib" "/usr/lib/x86_64-linux-gnu" NO_DEFAULT_PATH)
if(NOT SUPERLU_INCLUDE_DIR OR NOT SUPERLU_LIBRARY)
    message(FATAL_ERROR "SuperLU not found. Please make sure SuperLU is installed.")
else()
    message(STATUS "SuperLU found at ${SUPERLU_INCLUDE_DIR} and ${SUPERLU_LIBRARY}")
endif()


# Include and link directories for all subprojects
include_directories(${ARMADILLO_INCLUDE_DIRS} ${EIGEN3_INCLUDE_DIRS} ${SUPERLU_INCLUDE_DIR})
set(LINK_LIBS ${ARMADILLO_LIBRARIES} ${OpenBLAS_LIBRARIES} ${SUPERLU_LIBRARY})

# Add subdirectories 
add_subdirectory(mole_C++) 
add_subdirectory(tests_C++) 
add_subdirectory(examples_C++) 

# Custom target to build everything 

add_custom_target(all_build DEPENDS mole_C++ tests_C++ examples_C++)
