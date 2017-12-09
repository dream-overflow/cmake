# Sample toolchain file for building for Android from a Linux system.
#
# Typical usage:
#    *) install android NDK
#    *) cd build
#    *) cmake -DCMAKE_TOOLCHAIN_FILE=~/android_cross_toolchain.cmake ..

set(CMAKE_SYSTEM_NAME Android)
set(TOOLCHAIN_PREFIX arm-linux-androideabi-4.9)

# cross compilers to use for C and C++
set(CMAKE_C_COMPILER ${TOOLCHAIN_PREFIX}-gcc)
set(CMAKE_CXX_COMPILER ${TOOLCHAIN_PREFIX}-g++)
set(CMAKE_CXX_LINK_EXECUTABLE ${TOOLCHAIN_PREFIX}-ld)

# target environment on the build host system
#   set 1st to dir with the cross compiler's C/C++ headers/libs
set(CMAKE_FIND_ROOT_PATH ${O3D_ANDROID_NDK_DIR}/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/${TOOLCHAIN_PREFIX})

# modify default behavior of FIND_XXX() commands to
# search for headers/libs in the target environment and
# search for programs in the build host environment
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
