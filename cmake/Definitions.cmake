#
#	NFX_APP_CATENARY_CALCULATOR
#
#	Compiler definitions
#
#	nfx Marine © 2024 <ronan.fesselier@nfxMarine.com>
#

set( CMAKE_CXX_STANDARD					20		)
set( CMAKE_CXX_STANDARD_REQUIRED		ON		)
set( CMAKE_DEBUG_POSTFIX				"-d"	)
set( CMAKE_VERBOSE_MAKEFILE				OFF		)
set( CMAKE_COLOR_DIAGNOSTICS			ON		)
set( CMAKE_EXPORT_COMPILE_COMMANDS		ON		)
set( CMAKE_WINDOWS_EXPORT_ALL_SYMBOLS	ON		)

message( STATUS "Configuring compilers:" )
message( "\t\tc++: " ${CMAKE_CXX_COMPILER_ID} " - " ${CMAKE_CXX_COMPILER_VERSION} )
message( "\t\tc  : " ${CMAKE_C_COMPILER_ID} " - " ${CMAKE_C_COMPILER_VERSION} )

if( WIN32 AND CMAKE_CXX_COMPILER_ID STREQUAL "MSVC" )
	set( CXX_COMPILE_FLAGS
# ------------------------------------ Compiler flags ----------------------------------------------- #
						/std:c++20
						/MP
						/arch:AVX
#						/arch:AVX2
						/W4						# warning level: /W0, /W1, /W2, /W3, /W4
						/Wall
						/WX-					# treat linker warnings as errors
						/permissive-
#						/fp:except
#						/fp:fast
#						/fp:strict
						/fp:precise
						/Zc:__cplusplus
						/Zc:inline
						/Zc:preprocessor		# Preprocessor conformance with c++>=11
#						/Qspectre				# Spectre/Meltdown mitigations. Need specific msvc installation.

# ------------------------------------ External libraries ------------------------------------------- #
						/external:anglebrackets # External libraries recognized by angle brackets <>
						/external:W0			# Disable warnings for external libraries

# ------------------------------------ Code analysis (slow compilation) ----------------------------- #
#						/analyze:WX- /analyze:external- /analyze

# ------------------------------------ Warning suppressions ----------------------------------------- #
#						/wd4061					# switch not handled
#						/wd4062					# switch not handled
#						/wd4244					# possible loss of data
#						/wd4505					# unreferenced function
#						/wd4514					# unreferenced inline function has been removed
#						/wd4599					# precompiled headers
#						/wd4605					# precompiled headers
#						/wd4625					# copy constructor was implicitly defined as deleted
#						/wd4626					# assignement operator was implicitly defined as deleted
#						/wd4623					# default constructor was implicitly defined as deleted
						/wd4710					# function not inlined
						/wd4711					# function inlined
#						/wd4715					# return value
#						/wd4723					# divide operation evaluated to zero
						/wd4820					# padding
						/wd4868					# left-to-right evaluation order in braced initializer list
#						/wd5027					# move assignement operator was implicitly defined as deleted
						/wd5045					# Qspectre
#						/wd5219					# implicit conversion
#						/wd5267					# definition of implicit copy constructor/assignment operator is deprecated because it has a user-provided assignment operator/copy constructor

	)

	set( CMAKE_SHARED_LINKER_FLAGS /manifestuac:no )
endif()

if( UNIX AND CMAKE_CXX_COMPILER_ID STREQUAL "GNU" )
	set( CXX_COMPILE_FLAGS
						-std=c++20
						-no-pie
						-fno-pie
						-fPIC
						-fdata-sections
						-g1
						-msse
						-msse2
						-msse3
						-msse4.1
						-pthread
						-DNDEBUG
						-O3
						-fdiagnostics-color=always
						-fdiagnostics-show-option
						-ffunction-sections
						-fomit-frame-pointer
						-fsigned-char
						-W
						-Waddress
						-Wall
						-Walloca
						-Wcast-align
						-Wcast-qual
						-Wconversion
#						-Wctor-dtor-privacy
						-Wdisabled-optimization
						-Wdouble-promotion
						-Werror
						-Wextra
						-Wformat
						-Wformat-security
						-Wformat=2
						-Wimplicit-fallthrough=3
						-Winit-self
						-Wmissing-declarations
						-Wmissing-field-initializers
#						-Wno-comment
#						-Wno-delete-non-virtual-dtor
#						-Wno-deprecated-copy
#						-Wno-dev
#						-Wno-long-long
#						-Wno-strict-overflow
#						-Wno-unused
#						-Wno-unused-parameter
#						-Wnon-virtual-dtor
#						-Wold-style-cast
						-Woverloaded-virtual
						-Wpedantic
						-Wpointer-arith
						-Wredundant-decls
						-Wreorder
						-Wreturn-type
						-Wsequence-point
						-Wshadow
						-Wsign-conversion
						-Wsuggest-override
						-Wswitch-default
						-Wswitch-enum
						-Wtautological-compare
						-Wtype-limits
						-Wundef
						-Wuninitialized
						-Wunknown-pragmas
						-Wunreachable-code
						-Wunused
						-Wunused-but-set-variable
						-Wunused-parameter
						-Wunused-result
						-Wunused-variable
	)
endif()

if( UNIX AND CMAKE_CXX_COMPILER_ID STREQUAL "Clang" )
	set( CXX_COMPILE_FLAGS
						-std=c++20
						-fno-pie
						-fPIC
						-fdata-sections
						-g1
						-msse
						-msse2
						-msse3
						-msse4.1
						-pthread
						-DNDEBUG
						-O3
						-fdiagnostics-color=always
						-fdiagnostics-show-option
						-ffunction-sections
						-fomit-frame-pointer
						-fsigned-char
						-W
						-Waddress
						-Wall
						-Walloca
						-Wcast-align
						-Wcast-qual
						-Wconversion
#						-Wctor-dtor-privacy
						-Wdisabled-optimization
						-Wdouble-promotion
						-Werror
						-Wextra
						-Wformat
						-Wformat-security
						-Wformat=2
#						-Wimplicit-fallthrough
						-Winit-self
						-Wmissing-declarations
						-Wmissing-field-initializers
#						-Wno-comment
#						-Wno-delete-non-virtual-dtor
#						-Wno-deprecated-copy
#						-Wno-dev
#						-Wno-long-long
#						-Wno-strict-overflow
						-Wno-unused
						-Wno-unused-parameter
#						-Wnon-virtual-dtor
#						-Wold-style-cast
						-Woverloaded-virtual
						-Wpedantic
						-Wpointer-arith
						-Wredundant-decls
						-Wreorder
						-Wreturn-type
						-Wsequence-point
						-Wshadow
						-Wsign-conversion
						-Wsuggest-override
						-Wswitch-default
						-Wswitch-enum
						-Wtautological-compare
						-Wtype-limits
						-Wundef
						-Wuninitialized
						-Wunknown-pragmas
						-Wunreachable-code
#						-Wunused
#						-Wunused-but-set-variable
#						-Wunused-parameter
#						-Wunused-result
#						-Wunused-variable
)
endif()
