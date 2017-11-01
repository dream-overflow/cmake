# - Try to find the Xrandr libraries
# Once done this will define
#
#  XRANDR_FOUND - system has Xrandr
#  XRANDR_INCLUDE_DIR - the Xrandr include directory
#  XRANDR_LIBRARY - The Xrandr library

# Copyright (c) 2017, DreamOverflow, <patrice.gilbert@dreamoverflow.org>
#
# Redistribution and use is allowed according to the terms of the BSD license.
# For details see the accompanying COPYING-CMAKE-SCRIPTS file.

if (UNIX)
	include (CheckLibraryExists)

	find_path(XRANDR_INCLUDE_DIR X11/extensions/Xrandr.h)

	find_library(XRANDR_LIBRARY NAMES Xrandr)

	mark_as_advanced(XRANDR_INCLUDE_DIR XRANDR_LIBRARY)


	if (XRANDR_INCLUDE_DIR AND XRANDR_LIBRARY)
		set(XRANDR_FOUND TRUE)
	else (XRANDR_INCLUDE_DIR AND XRANDR_LIBRARY)
		set(XRANDR_FOUND FALSE)
	endif (XRANDR_INCLUDE_DIR AND XRANDR_LIBRARY)


	if (XRANDR_FOUND)
		if (NOT Xrandr_FIND_QUIETLY)
      		message(STATUS "Found Xrandr: ${XRANDR_LIBRARY}")
		endif (NOT Xrandr_FIND_QUIETLY)
	else (XRANDR_FOUND)
		if (Xrandr_FIND_REQUIRED)
			message("*****************************************************")
			message_color(${TextError} "Error : Xrandr library not found")
			message_distro(${TextHelp} "Resolve : sudo dnf -y install libXrandr-devel libXrandr" "install libXrandr-devel libXrandr")
			message("*****************************************************")
			message(FATAL_ERROR "Could NOT find Xrandr library")
		endif (Xrandr_FIND_REQUIRED)
		if (NOT Xrandr_FIND_QUITELY)
			message_color(${TextWarning} "Could NOT find Xrandr library")
		endif (NOT Xrandr_FIND_QUITELY)
	endif (XRANDR_FOUND)
endif (UNIX)
