add_library(
	utility
		src/utility.cpp
)

target_compile_options(
	utility
	PRIVATE
		${DEFAULT_COMPILER_OPTIONS}
)

target_link_options(
	utility
	PRIVATE
		${DEFAULT_LINKER_OPTIONS}
)

target_include_directories(
		utility
		PUBLIC ${CMAKE_CURRENT_LIST_DIR}/include
)