#
#	NFX_APP_CATENARY_CALCULATOR
#
#	Dependencies
#
#	nfx Marine © 2024 <ronan.fesselier@nfxMarine.com>
#

add_dependencies(${PROJECT_NAME} "copy_resources_folder_${PROJECT_NAME}")

target_link_libraries( ${PROJECT_NAME} PUBLIC
											nfxCore
											nfxCatenary
)
