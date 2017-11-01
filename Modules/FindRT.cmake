# - Try to find the Xrandr libraries
# Once done this will define
#
# RT_FOUND - system has rt library
# RT_LIBRARIES - rt libraries directory

# Copyright (c) 2017, DreamOverflow, <patrice.gilbert@dreamoverflow.org>
#

if(RT_LIBRARIES)
    set(RT_FIND_QUIETLY TRUE)
endif(RT_LIBRARIES)

find_library(RT_LIBRARY rt)
set(RT_LIBRARIES ${RT_LIBRARY})
# handle the QUIETLY and REQUIRED arguments and set
# RT_FOUND to TRUE if all listed variables are TRUE
include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(rt DEFAULT_MSG RT_LIBRARY)
