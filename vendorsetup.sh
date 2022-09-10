rm -rf vendor/qcom/opensource/usb
git clone --depth=1 https://github.com/ArrowOS/android_vendor_qcom_opensource_usb -b arrow-13.0 vendor/qcom/opensource/usb

rm -rf hardware/xiaomi
git clone --depth=1 https://github.com/ArrowOS-Devices/android_hardware_xiaomi -b arrow-13.0 hardware/xiaomi

rm -rf device/xiaomi/sm8250-common
git clone --depth=1 https://github.com/itsurboimasarou/device_xiaomi_sm8250-common device/xiaomi/sm8250-common

rm -rf kernel/xiaomi/munch
git clone --depth=1 https://github.com/itsurboimasarou/kernel_xiaomi_munch kernel/xiaomi/sm8250

rm -rf vendor/xiaomi
git clone --depth=1 https://gitlab.com/itsurboimasarou/vendor_xiaomi_munch vendor/xiaomi/munch

cd vendor/xiaomi
git init
git remote add origin https://gitlab.com/madmax7896/android_vendor_xiaomi.git
git config core.sparseCheckout true
echo "sm8250-common/" >> .git/info/sparse-checkout
git pull origin lineage-19.1

cd ../..
