# - Some helpers for cmake
#
# Copyright (c) 2017, DreamOverflow, <frederic.scherma@dreamoverflow.org>

set(O3D_ANDROID_NDK_DIR $ENV{ANDROID_NDK})
set(O3D_ANDROID_NDK_VERSION $ENV{ANDROID_NDK_VERSION})
set(O3D_ANDROID_ARCH $ENV{ANDROID_ARCH})

set(O3D_ANDROID_INCLUDE_DIR ${O3D_ANDROID_NDK_DIR}/sysroot/usr/include)
set(O3D_ANDROID_LIBRARY_DIR ${O3D_ANDROID_NDK_DIR}/platforms/android-${O3D_ANDROID_NDK_VERSION}/arch-${O3D_ANDROID_ARCH}/usr/lib)
