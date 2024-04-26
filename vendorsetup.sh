rm -rf kernel/asus/sdm660
git clone --recursive --depth=1 https://github.com/Tiktodz/android_kernel_asus_sdm660 -b sdm660 kernel/asus/sdm660

rm -rf external/jemalloc_new
git clone --depth=1 https://github.com/crdroidandroid/android_external_jemalloc-new -b 14.0 external/jemalloc_new

export TZ=Asia/Jakarta
