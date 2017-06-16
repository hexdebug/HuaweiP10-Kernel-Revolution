#!/bin/bash
make mrproper
VARIANT=$(date +"%d%m%Y")
export CROSS_COMPILE=../kernel/CrossCompiler/aarch64-linux-android-4.9/bin/aarch64-linux-android-
export LOCALVERSION="-Revolution_Kernel-v.$VARIANT"
make ARCH=arm64 O=../out revolution_defconfig
make ARCH=arm64 O=../out -j8
cp ../out/arch/arm64/boot/Image.gz bootimg/kernel.gz
cd bootimg
./bootimg.py --repack-bootimg
mv boot_repack.img ../../compiled/Revolution_Kernel-v.$VARIANT.img
