cmake_minimum_required (VERSION 3.3.2 FATAL_ERROR)

project("raw_binary")

set(CMAKE_COLOR_MAKEFILE ON)

add_subdirectory(common)
add_subdirectory(io_libs)
add_subdirectory(format_conversion_libs)
#add_subdirectory(land_water_mask_libs)
#add_subdirectory(per_pixel_angles_libs)
