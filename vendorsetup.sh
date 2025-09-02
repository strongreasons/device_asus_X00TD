#!/bin/bash
# This is a simple Bash script

# Clone Kernel tree
rm -rf kernel/asus/sdm660
git clone --depth=1 --recursive https://github.com/Tiktodz/android_kernel_asus_sdm660 -b wip kernel/asus/sdm660

# Clone Common tree
rm -rf device/asus/sdm660-common
git clone --depth=1 https://github.com/strongreasons/device_asus_sdm660-common -b 16 device/asus/sdm660-common

# Clone device sepolicy
rm -rf device/qcom/sepolicy-legacy-um
git clone --depth=1 https://github.com/Tiktodz/device_qcom_sepolicy-legacy-um device/qcom/sepolicy-legacy-um

# Clone Vendor tree
rm -rf vendor/asus
git clone --depth=1 https://github.com/strongreasons/proprietary_vendor_asus -b 16 vendor/asus

#Sign-Key
rm -rf vendor/lineage-priv/keys
mkdir -p vendor/lineage-priv/keys
git clone https://github.com/electrolaboratory/public-keys vendor/lineage-priv/keys/

export TZ=Asia/Jakarta
