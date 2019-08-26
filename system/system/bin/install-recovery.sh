#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:2a95fd5874ef9afc9c73cde2eb4b96b8af2e8849; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:0d412d60193ca57b1b38a31ac876618c9eaac59b EMMC:/dev/block/bootdevice/by-name/recovery 2a95fd5874ef9afc9c73cde2eb4b96b8af2e8849 67108864 0d412d60193ca57b1b38a31ac876618c9eaac59b:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
