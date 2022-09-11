#!/bin/sh
export ARCH="x86_64"
export CXX="g++"
export CC="gcc"
export CMAKE_CXX_COMPILER_LAUNCHER="ccache"
export CMAKE_C_COMPILER_LAUNCHER="ccache"
export CMAKE_EXE_LINKER_FLAGS="-static"

# Qt6
export QT_CONFIGURE_FLAGS=(-xplatform linux-clang -opensource -confirm-license -no-xcb -linuxfb -nomake tests -qpa linuxfb -no-xkbcommon -no-fontconfig -no-icu -widgets -no-libudev -no-dbus -qt-zlib -qt-libjpeg -qt-libpng -qt-freetype -qt-pcre -qt-harfbuzz -no-openssl -debug-and-release -no-egl -no-gbm -static)
