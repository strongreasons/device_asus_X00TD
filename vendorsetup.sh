rm -rf kernel/asus/sdm660
git clone --depth=1 --recursive https://github.com/RyuujiX/android_kernel_asus_sdm660 eas-test kernel/asus/sdm660
rm -rf kernel/asus/sdm660/KernelSU/userspace
rm -rf hardware/qcom-caf/msm8998/audio
git clone --depth=1 https://github.com/inexdroid/hardware_qcom-caf_msm8998_audio hardware/qcom-caf/msm8998/audio
rm -rf hardware/qcom-caf/msm8998/display
git clone --depth=1 https://github.com/inexdroid/hardware_qcom-caf_msm8998_display hardware/qcom-caf/msm8998/display
rm -rf hardware/qcom-caf/msm8998/media
git clone --depth=1 https://github.com/inexdroid/hardware_qcom-caf_msm8998_media hardware/qcom-caf/msm8998/media
