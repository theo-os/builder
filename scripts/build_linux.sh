#!/bin/sh
set -e

cd build

echo -e "Building the linux kernel..."
cd linux
# TODO: Support cross compilation
make -j$(nproc) defconfig CROSS_COMPILE="$CROSS_COMPILE" ARCH="$ARCH"
make -j$(nproc) bzImage
make -j$(nproc) modules

echo -e "Installing the kernel modules..."
make -j$(nproc) modules_install INSTALL_MOD_PATH=../rootfs
make -j$(nproc) headers_install INSTALL_HDR_PATH=../rootfs/usr

cd -
