# utility.cpp
add_executable(test_utility test_utility.cpp)
target_link_libraries(test_utility utility)
add_test(
        NAME utility
        COMMAND test_utility)
