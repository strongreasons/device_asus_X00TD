rm -rf kernel/asus/sdm660
git clone --recursive --depth=1 https://github.com/Tiktodz/android_kernel_asus_sdm660 -b sdm660 kernel/asus/sdm660

rm -rf device/asus/sdm660-common
git clone --depth=1 https://github.com/Tiktodz/android_device_asus_sdm660-common -b 14.0 device/asus/sdm660-common

export TZ=Asia/Jakarta
