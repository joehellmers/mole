# tests_C++ Configuration
include_directories("${CMAKE_SOURCE_DIR}/mole_C++")

foreach(TEST_NUM RANGE 1 5)
    add_executable(test${TEST_NUM} test${TEST_NUM}.cpp)
    target_link_libraries(test${TEST_NUM} PUBLIC mole_C++ ${LINK_LIBS})
endforeach()

# Custom target to run all tests
add_custom_target(run_tests
    COMMAND ${CMAKE_COMMAND} -E env LD_LIBRARY_PATH=${CMAKE_BINARY_DIR}/mole_C++ ./test1
    COMMAND ${CMAKE_COMMAND} -E env LD_LIBRARY_PATH=${CMAKE_BINARY_DIR}/mole_C++ ./test2
    COMMAND ${CMAKE_COMMAND} -E env LD_LIBRARY_PATH=${CMAKE_BINARY_DIR}/mole_C++ ./test3
    COMMAND ${CMAKE_COMMAND} -E env LD_LIBRARY_PATH=${CMAKE_BINARY_DIR}/mole_C++ ./test4
    COMMAND ${CMAKE_COMMAND} -E env LD_LIBRARY_PATH=${CMAKE_BINARY_DIR}/mole_C++ ./test5
    DEPENDS test1 test2 test3 test4 test5
)

