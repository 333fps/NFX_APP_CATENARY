#
#	NFX_APP_CATENARY_CALCULATOR
#
#	Options
#
#	nfx Marine © 2024 <ronan.fesselier@nfxMarine.com>
#

set( RC )
if( WIN32)
		configure_file(
				version.rc.in
				version.rc
				@ONLY
		)
		set( RC version.rc )
endif()

ADD_CUSTOM_TARGET( "copy_resources_folder_${PROJECT_NAME}" ALL
					COMMAND ${CMAKE_COMMAND} -E copy_directory
							"${CMAKE_CURRENT_SOURCE_DIR}/resources/" "${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/resources/"
)
