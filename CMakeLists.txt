cmake_minimum_required(VERSION 3.10)
project(TopLevelProject VERSION 1.0 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Display the detected C++ compiler ID
message(STATUS "Detected CXX Compiler ID: ${CMAKE_CXX_COMPILER_ID}")

# Detect Apple Clang and adjust compiler and linker flags
if(CMAKE_CXX_COMPILER_ID STREQUAL "Clang")
    if(CMAKE_CXX_COMPILER MATCHES ".*AppleClang.*")
        message(STATUS "Apple Clang detected. Configuring OpenMP support.")
        set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Xclang -fopenmp")
        set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -lomp")
    else()
        message(STATUS "Generic Clang detected. Adding -fopenmp in CXXFLAGS.")
        set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fopenmp")
        set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -fopenmp")
    endif()
else()
    message(STATUS "Non-Clang compiler detected. Adding -fopenmp in CXXFLAGS.")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fopenmp")
    set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -fopenmp")
endif()

# Set additional include and linker flags if required for OpenMP
set(CPPFLAGS "-Xclang -fopenmp")
set(LDFLAGS "-lomp")

# Add include and link directories if necessary
include_directories(/usr/local/include)
link_directories(/usr/local/lib)

# Continue with other settings, e.g., find_package or custom library linking
find_package(Armadillo 9.800.4 REQUIRED)
find_package(Eigen3 3.3.7 REQUIRED)
find_library(OpenBLAS_LIBRARIES NAMES openblas blas "/usr/lib/x86_64-linux-gnu" REQUIRED)

find_path(SUPERLU_INCLUDE_DIR slu_ddefs.h PATHS "/usr/local/include" "/usr/include" "/usr/include/superlu" NO_DEFAULT_PATH)
find_library(SUPERLU_LIBRARY superlu PATHS "/usr/local/lib" "/usr/lib" "/usr/lib/x86_64-linux-gnu" NO_DEFAULT_PATH)
if(NOT SUPERLU_INCLUDE_DIR OR NOT SUPERLU_LIBRARY)
    message(FATAL_ERROR "SuperLU not found. Please make sure SuperLU is installed.")
else()
    message(STATUS "SuperLU found at ${SUPERLU_INCLUDE_DIR} and ${SUPERLU_LIBRARY}")
endif()

include_directories(${ARMADILLO_INCLUDE_DIRS} ${EIGEN3_INCLUDE_DIRS} ${SUPERLU_INCLUDE_DIR})
set(LINK_LIBS ${ARMADILLO_LIBRARIES} ${OpenBLAS_LIBRARIES} ${SUPERLU_LIBRARY})

# Add linker options and subdirectories
add_link_options(${LDFLAGS})
add_subdirectory(mole_C++) 
add_subdirectory(tests_C++) 
add_subdirectory(examples_C++) 

add_custom_target(all_build DEPENDS mole_C++ tests_C++ examples_C++)
