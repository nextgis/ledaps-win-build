cmake_minimum_required (VERSION 3.3.2 FATAL_ERROR)

set(PROJECT_NAME "espa-product-formatter")

project(${PROJECT_NAME})

set(CMAKE_COLOR_MAKEFILE ON)

SET(CMAKE_MODULE_PATH ${CMAKE_SOURCE_DIR}/cmake ${CMAKE_MODULE_PATH})

add_subdirectory(py_modules)
add_subdirectory(scripts)
add_subdirectory(src)
