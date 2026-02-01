#!/bin/bash
# This is a simple Bash script

#rm -rf prebuilts/clang/host/linux-x86
rm -rf out/soong out/host/linux-x86
rm -rf hardware/qcom-caf/sdm660
rm -rf hardware/qcom-caf/msm8998

sed -i '/dontaudit location_domain vendor_sysfs_soc_sensitive:file r_file_perms;/s/^/# /' device/voltage/sepolicy/qcom/vendor/location.te

# Clone Kernel tree
rm -rf kernel/asus/sdm660
git clone --depth=1 --recursive https://github.com/Tiktodz/android_kernel_asus_sdm660 -b wip kernel/asus/sdm660

# Clone Common tree
rm -rf device/asus/sdm660-common
git clone --depth=1 https://github.com/Tiktodz/android_device_asus_sdm660-common-4.19 -b 16.0 device/asus/sdm660-common

# Clone device sepolicy
#rm -rf device/qcom/sepolicy-legacy-um
#git clone --depth=1 https://github.com/Tiktodz/device_qcom_sepolicy-legacy-um device/qcom/sepolicy-legacy-um

# Clone Vendor tree
rm -rf vendor/asus
git clone --depth=1 https://github.com/strongreasons/proprietary_vendor_asus -b 16 vendor/asus

#Sign-Key
#rm -rf vendor/lineage-priv/keys
#mkdir -p vendor/lineage-priv/keys
#git clone https://github.com/electrolaboratory/public-keys vendor/lineage-priv/keys/

cd vendor/voltage-priv/keys/
bash keys.sh
cd -

export TZ=Asia/Jakarta
