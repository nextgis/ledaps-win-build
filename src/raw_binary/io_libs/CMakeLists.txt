cmake_minimum_required (VERSION 3.3.2 FATAL_ERROR)

set(LIB_NAME "lib_espa_raw_binary")
project("${LIB_NAME}")

set(CMAKE_COLOR_MAKEFILE ON)

set(LIB_HEADERS
	write_metadata.h
	subset_metadata.h
	raw_binary_io.h
	parse_metadata.h
	meta_stack.h
	gctp_defines.h
	espa_metadata.h
	envi_header.h
)

set(LIB_SOURCES
	write_metadata.c
	subset_metadata.c
	raw_binary_io.c
	parse_metadata.c
	meta_stack.c
	espa_metadata.c
	envi_header.c
)

include_directories(../common)

find_package(LibXml2 REQUIRED)
include_directories(${LIBXML2_INCLUDE_DIR})
#add_definitions(-DLIBXML_STATIC)
#add_definitions(-DIN_LIBXML)

find_package(iconv REQUIRED)
include_directories(${ICONV_INCLUDE_DIR})

add_library(${LIB_NAME} SHARED ${LIB_HEADERS} ${LIB_SOURCES})

target_link_libraries(
    ${LIB_NAME}
    ${LIBXML2_LIBRARIES}
    ${ICONV_LIBRARY}
    lib_espa_common
)
