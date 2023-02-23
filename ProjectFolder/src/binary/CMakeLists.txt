add_executable (
	${PROJECT_NAME} 
	main.cpp
)

target_compile_options(
	${PROJECT_NAME}
	PRIVATE
		${DEFAULT_COMPILER_OPTIONS}
)

target_link_options(
	${PROJECT_NAME}
	PRIVATE
		${DEFAULT_LINKER_OPTIONS}
)

target_link_libraries (
	${PROJECT_NAME}
	utility
	# Remove comment when adding a CMAKE submodule to src/submodules
	# ${SUBMODULES_TARGET}
)
