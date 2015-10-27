cmake_minimum_required (VERSION 3.3.2 FATAL_ERROR)

set(LIB_NAME "lib_espa_format_conversion")
project("${LIB_NAME}")

set(CMAKE_COLOR_MAKEFILE ON)

set(LIB_HEADERS
	convert_lpgs_to_espa.h
	convert_espa_to_hdf.h
	espa_hdf.h
	espa_hdf_eos.h
	convert_espa_to_gtif.h
	espa_geoloc.h
	convert_modis_to_espa.h
	convert_espa_to_raw_binary_bip.h
	generate_julian_date_bands.h
)

set(LIB_SOURCES
	convert_lpgs_to_espa.c
	convert_espa_to_hdf.c
	espa_hdf.c
	espa_hdf_eos.c
    convert_espa_to_gtif.c
	convert_modis_to_espa.c
	espa_geoloc.c
    convert_espa_to_raw_binary_bip.c
	generate_julian_date_bands.c
)

include_directories(../common)
include_directories(../io_libs)

find_package(LibXml2 REQUIRED)
include_directories(${LIBXML2_INCLUDE_DIR})

find_package(JPEG REQUIRED)
include_directories(${JPEG_INCLUDE_DIR})

find_package(TIFF REQUIRED)
include_directories(${TIFF_INCLUDE_DIR})

find_package(TIFF REQUIRED)
include_directories(${TIFF_INCLUDE_DIR})

find_package(HDF4 REQUIRED)
include_directories(${HDF4_INCLUDE_DIRS})
add_definitions(-DHDFAPDLL)

find_package(HDF4EOS REQUIRED)
include_directories(${HDF4EOS_INCLUDE_DIRS})


add_library(${LIB_NAME} SHARED ${LIB_HEADERS} ${LIB_SOURCES})

target_link_libraries(
    ${LIB_NAME}
    ${JPEG_LIBRARY}
    ${LIBXML2_LIBRARIES}
    ${TIFF_LIBRARY}
    ${HDF4_LIBRARY}
    ${HDF4EOS_LIBRARY}
    lib_espa_common
    lib_espa_raw_binary
)
