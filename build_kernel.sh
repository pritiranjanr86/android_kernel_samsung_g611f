#!/bin/bash

export ARCH=arm64
export CROSS_COMPILE=/home/aum/gcc-linaro-7.5.0-2019.12-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-
export ANDROID_MAJOR_VERSION=p

make on7xreflte_01_defconfig
make CONFIG_DEBUG_SECTION_MISMATCH=y KCFLAGS="-Wno-duplicate-decl-specifier -Wno-misleading-indentation -Wno-switch-unreachable"
