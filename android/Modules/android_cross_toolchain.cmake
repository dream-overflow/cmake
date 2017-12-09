# Sample toolchain file for building for Android from a Linux system.
#
# Typical usage:
#    *) install android NDK
#    *) cd build
#    *) cmake -DCMAKE_TOOLCHAIN_FILE=~/android_cross_toolchain.cmake ..

set(CMAKE_SYSTEM_NAME Android)
set(TOOLCHAIN_PREFIX arm-linux-androideabi)

set(CMAKE_SYSTEM_VERSION 1)

# cross compilers to use for C and C++
set(CMAKE_C_COMPILER ${TOOLCHAIN_PREFIX}-gcc)
set(CMAKE_CXX_COMPILER ${TOOLCHAIN_PREFIX}-g++)
set(CMAKE_AR ${TOOLCHAIN_PREFIX}-ar)
set(CMAKE_RANLIB ${TOOLCHAIN_PREFIX}-ranlib)
set(CMAKE_C_LINK_EXECUTABLE ${TOOLCHAIN_PREFIX}-ld)
set(CMAKE_CXX_LINK_EXECUTABLE ${TOOLCHAIN_PREFIX}-ld)

#set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wall -Werror")
#set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} --std=c++11 -Wall -Werror")

# target environment on the build host system
#   set 1st to dir with the cross compiler's C/C++ headers/libs
set(CMAKE_FIND_ROOT_PATH $ENV{ANDROID_NDK}/toolchains/${TOOLCHAIN_PREFIX}-4.9/prebuilt/linux-x86_64)

# modify default behavior of FIND_XXX() commands to
# search for headers/libs in the target environment and
# search for programs in the build host environment
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
