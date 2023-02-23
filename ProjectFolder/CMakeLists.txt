cmake_minimum_required(VERSION 3.8 FATAL_ERROR)

# Name
project(
		"cpp-cmake-template"
		VERSION "1.0.0.0"
		DESCRIPTION "Template Cmake Cpp"
		HOMEPAGE_URL "https://github.com/patrikfors/test-cmake-template.git"
		LANGUAGES "CXX")

set (CMAKE_POSITION_INDEPENDENT_CODE ON)

# C++
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

find_program(CPPLINT cpplint)
if(CPPLINT)
	set(CMAKE_CXX_CPPLINT ${CPPLINT} --filter=-build/include_subdir --quiet)
endif()

find_program(CLANG_TIDY clang-tidy)
if (CLANG_TIDY)
	set(CMAKE_CXX_CLANG_TIDY ${CLANG_TIDY})
endif()

find_program(IWYU iwyu)
if(IWYU)
	set(CMAKE_CXX_INCLUDE_WHAT_YOU_USE ${IWYU})
endif()

add_subdirectory(src/binary)
add_subdirectory(src/lib)
add_subdirectory(src/submodules)

enable_testing()
add_subdirectory(tests)
