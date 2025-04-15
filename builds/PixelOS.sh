#!/bin/bash

PWDIR=$(pwd)

BRANCH_DEVICE="PixelOS-A15"
BRANCH_VENDOR="lineage-22.2"
BRANCH_KERNEL="lineage-22.2"
GIT_DEVICE="https://github.com/Android-Unofficial"
GIT_VENDOR="https://git.mainlining.org/cupid-development"
GIT_KERNEL="https://github.com/cupid-development"

git clone -b ${BRANCH_DEVICE} --single-branch ${GIT_DEVICE}/android_device_xiaomi_sm8450-common ${PWDIR}/device/xiaomi/sm8450-common
git clone -b ${BRANCH_DEVICE} --single-branch ${GIT_DEVICE}/android_device_xiaomi_mayfly ${PWDIR}/device/xiaomi/mayfly
git clone -b ${BRANCH_DEVICE} --single-branch ${GIT_DEVICE}/android_device_xiaomi_unicorn ${PWDIR}/device/xiaomi/unicorn

git clone -b ${BRANCH_VENDOR} --single-branch --depth=1 ${GIT_VENDOR}/proprietary_vendor_xiaomi_sm8450-common ${PWDIR}/vendor/xiaomi/sm8450-common
git clone -b ${BRANCH_VENDOR} --single-branch --depth=1 ${GIT_VENDOR}/proprietary_vendor_xiaomi_mayfly ${PWDIR}/vendor/xiaomi/mayfly
git clone -b ${BRANCH_VENDOR} --single-branch --depth=1 ${GIT_VENDOR}/proprietary_vendor_xiaomi_unicorn ${PWDIR}/vendor/xiaomi/unicorn

git clone -b ${BRANCH_KERNEL} --single-branch --depth=1 ${GIT_KERNEL}/android_kernel_xiaomi_sm8450-modules ${PWDIR}/kernel/xiaomi/sm8450-modules
git clone -b ${BRANCH_KERNEL} --single-branch --depth=1 ${GIT_KERNEL}/android_kernel_xiaomi_sm8450-devicetrees ${PWDIR}/kernel/xiaomi/sm8450-devicetrees
git clone -b aosp --single-branch --depth=1 https://github.com/dopaemon/android_kernel_xiaomi_common.git ${PWDIR}/kernel/xiaomi/sm8450
cd ${PWDIR}/kernel/xiaomi/sm8450
git submodule update --init --recursive
cd ${PWDIR}

git clone -b ${BRANCH_DEVICE} --single-branch ${GIT_DEVICE}/android_hardware_xiaomi.git ${PWDIR}/hardware/xiaomi

git clone https://github.com/Android-Unofficial/android_vendor_lineage-priv_keys.git ${PWDIR}/vendor/lineage-priv/keys
