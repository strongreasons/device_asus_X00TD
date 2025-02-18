rm -rf kernel/asus/sdm660
git clone --depth=1 --recursive https://github.com/Tiktodz/android_kernel_asus_sdm660 -b master kernel/asus/sdm660
rm -rf kernel/asus/sdm660/KernelSU-Next/userspace

rm -rf device/asus/sdm660-common
git clone https://github.com/strongreasons/device_asus_sdm660-common -b 15 device/asus/sdm660-common

rm -rf vendor/asus
git clone --depth=1 https://github.com/strongreasons/vendor_asus -b 15 vendor/asus

rm -rf vendor/lineage-priv/keys
mkdir -p vendor/lineage-priv/keys
git clone https://github.com/sotodrom/keys vendor/lineage-priv/keys/

export TZ=Asia/Jakarta
