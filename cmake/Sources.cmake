#
#	NFX_APP_CATENARY_CALCULATOR
#
#	Source files
#
#	nfx Marine © 2024 <ronan.fesselier@nfxMarine.com>
#

set( sources_files
					"main.cpp"
)

add_executable( ${PROJECT_NAME}
							${RC}
							${sources_files}
)

target_compile_options( ${PROJECT_NAME} PRIVATE $<$<COMPILE_LANGUAGE:CXX>:${CXX_COMPILE_FLAGS}> )

target_include_directories( ${PROJECT_NAME} PRIVATE "." )

#target_link_directories( ${PROJECT_NAME} PUBLIC ${nfx_LIB_DIR} )

target_precompile_headers( ${PROJECT_NAME} REUSE_FROM nfxCore )


if( UNIX )
	set_target_properties( ${PROJECT_NAME} PROPERTIES
								VERSION		${PROJECT_VERSION}
								SOVERSION	${PROJECT_VERSION_MAJOR} )
endif()
if( WIN32 )
	if( ${NFX_HIDE_CONSOLE} )
		set( CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} /SUBSYSTEM:WINDOWS /ENTRY:mainCRTStartup" )
		set_target_properties( ${PROJECT_NAME} PROPERTIES WIN32_EXECUTABLE TRUE )
	endif()
endif()
