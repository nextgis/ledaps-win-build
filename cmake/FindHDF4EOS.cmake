# Find HDF4EOS
# ~~~~~~~~
# Redistribution and use is allowed according to the terms of the BSD license.
# For details see the accompanying COPYING-CMAKE-SCRIPTS file.
#
# Once run this will define:
#
# HDF4EOS_FOUND        = system has HDF4EOS lib
# HDF4EOS_LIBRARIES      = full path to the HDF4EOS libraries
# HDF4EOS_INCLUDE_DIRS = where to find headers
#

FIND_PATH(HDF4EOS_INCLUDE_DIRS "hdf.h" PATHS
    /usr/include
    /usr/local/include
    "$ENV{LIB_DIR}/include"
    "$ENV{INCLUDE}"
    "$ENV{OSGEO4W_ROOT}/include"
    PATH_SUFFIXES hdf
  )

SET(LIB_SEARCH_PATH
    /usr/lib
    /usr/local/lib
    "$ENV{LIB_DIR}/lib"
    "$ENV{LIB}/lib"
    "$ENV{OSGEO4W_ROOT}/lib")

FIND_LIBRARY(HDF4EOS_hdfeos_LIBRARY NAMES hdfeos PATHS LIB_SEARCH_PATH)
FIND_LIBRARY(HDF4EOS_gctp_LIBRARY NAMES gctp PATHS LIB_SEARCH_PATH)

SET(HDF4EOS_LIBRARIES ${HDF4EOS_hdfeos_LIBRARY} ${HDF4EOS_gctp_LIBRARY})

IF (HDF4EOS_INCLUDE_DIRS AND HDF4EOS_LIBRARIES)
  SET(HDF4EOS_FOUND TRUE)
ENDIF (HDF4EOS_INCLUDE_DIRS AND HDF4EOS_LIBRARIES)

IF (HDF4EOS_FOUND)
    MESSAGE(STATUS "Found HDF4EOS: ${HDF4EOS_LIBRARIES}")
ELSE (HDF4EOS_FOUND)
  IF (HDF4EOS_FIND_REQUIRED)
    MESSAGE(FATAL_ERROR "Could not find HDF4EOS")
  ENDIF (HDF4EOS_FIND_REQUIRED)
ENDIF (HDF4EOS_FOUND) 