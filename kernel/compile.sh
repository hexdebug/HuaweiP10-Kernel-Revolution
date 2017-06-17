#!/bin/bash
make mrproper
VARIANT=$(date +"%d%m%Y")
export CROSS_COMPILE=../kernel/CrossCompiler/aarch64-linux-android-4.9/bin/aarch64-linux-android-
export LOCALVERSION="-Revolution_Kernel-v.$VARIANT"
if [[ -f "$(pwd)/arch/arm64/configs/revolution_defconfig" ]]; then
make ARCH=arm64 O=../out revolution_defconfig
else
make ARCH=arm64 O=../out merge_hi3660_defconfig
fi
make ARCH=arm64 O=../out -j8
cp ../out/arch/arm64/boot/Image.gz bootimg/kernel.gz
rm ../out/arch/arm64/boot/Image.gz
cd bootimg
./bootimg.py --repack-bootimg
rm kernel.gz
mv boot_repack.img ../../compiled/Revolution_Kernel-v.$VARIANT.img
