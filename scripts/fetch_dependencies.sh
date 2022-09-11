#!/bin/zsh
set -e

mkdir -p ./build/rootfs
cd build

echo -e "Fetching the linux kernel..."
git clone \
	--depth 1 \
	-j$(nproc) \
	https://github.com/torvalds/linux.git

echo -e "Fetching qt6..."
git clone \
	--depth 1 \
	-j$(nproc) \
	https://github.com/qt/qtbase

cd -
