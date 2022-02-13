if(NOT EXISTS "/home/chris/Workspace/gamma/build/gitman_sources/ode/install_manifest.txt")
	message(FATAL_ERROR "Cannot find install manifest: \"/home/chris/Workspace/gamma/build/gitman_sources/ode/install_manifest.txt\"")
endif()

file(READ "/home/chris/Workspace/gamma/build/gitman_sources/ode/install_manifest.txt" FILES)
string(REGEX REPLACE "\n" ";" FILES "${FILES}")

foreach(FILE ${FILES})
	message(STATUS "Uninstalling: ${FILE}")
	if(EXISTS "${FILE}")
		file(REMOVE ${FILE})
	elseif(IS_SYMLINK "${FILE}")
		file(REMOVE ${FILE})
	else()
		message(STATUS "File \"${FILE}\" does not exist.")
	endif()
endforeach()
