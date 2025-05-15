#!/bin/bash

export BUILD_USER=queen
export TZ=Asia/Jakarta

rm -rf kernel/asus/sdm660
git clone --depth=1 --recursive https://github.com/Tiktodz/android_kernel_asus_sdm660 -b stable kernel/asus/sdm660

# Force Using KSU
rm -rf system/extras/su
rm -rf platform/system/extras/su

rm -rf device/asus/sdm660-common
git clone --depth=1 https://github.com/strongreasons/device_asus_sdm660-common -b v2 device/asus/sdm660-common

rm -rf vendor/asus
git clone --depth=1 https://github.com/Tiktodz/proprietary_vendor_asus-4.19 -b 15.0 vendor/asus

rm -rf vendor/lineage-priv/keys
rm -rf vendor/lineage/signing/keys
mkdir -p vendor/lineage-priv/keys
git clone https://github.com/electrolaboratory/public-keys vendor/lineage-priv/keys/
