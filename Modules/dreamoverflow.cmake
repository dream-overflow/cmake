# - Some helpers for cmake
#
# Copyright (c) 2017, DreamOverflow, <patrice.gilbert@dreamoverflow.org>

string(ASCII 27 Esc)
set(TextColorReset	"${Esc}[m")
set(TextRed		    "${Esc}[31m")
set(TextBlue		"${Esc}[34m")
set(TextCyan		"${Esc}[36m")

set(TextError		${TextRed})
set(TextWarning		${TextBlue})
set(TextHelp		${TextCyan})

function(message_color color message)
	message("${color}${message}${TextColorReset}")
endfunction(message_color)

function(message_distro color redhatMessage otherMessage)
	# @todo add validations on execution and error
	find_program(LSB_RELEASE lsb_release)
	execute_process(COMMAND ${LSB_RELEASE} -is OUTPUT_VARIABLE DISTRO OUTPUT_STRIP_TRAILING_WHITESPACE)

	string(TOUPPER ${DISTRO} DISTRO)
	if (${DISTRO} STREQUAL "FEDORA")
		message_color(${color} ${redhatMessage})
	else (${DISTRO} STREQUAL "FEDORA")
		message_color(${color} ${otherMessage})
	endif (${DISTRO} STREQUAL "FEDORA")
endfunction(message_distro)
