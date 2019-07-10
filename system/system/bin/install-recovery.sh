#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:9cd949fb355d4d2f9d041640cfc5382a2cac0f8d; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:282fb0650aeb5fadc90067501fe3de48cc8b2389 EMMC:/dev/block/bootdevice/by-name/recovery 9cd949fb355d4d2f9d041640cfc5382a2cac0f8d 67108864 282fb0650aeb5fadc90067501fe3de48cc8b2389:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
