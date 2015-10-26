cmake_minimum_required (VERSION 3.3.2 FATAL_ERROR)

set(LIB_NAME "lib_espa_common")
project("${LIB_NAME}")

set(CMAKE_COLOR_MAKEFILE ON)

set(LIB_HEADERS
	error_handler.h
	espa_common.h
)

set(LIB_SOURCES
	error_handler.c
)

add_library(${LIB_NAME} SHARED ${LIB_HEADERS} ${LIB_SOURCES})
