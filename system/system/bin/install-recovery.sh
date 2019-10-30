#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:d7fa1ce3a7b8ec099990d79f2207f958a4d6d3fa; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:caf1fb3de5d6741a09b4bd858c0ca83bf72d704f EMMC:/dev/block/bootdevice/by-name/recovery d7fa1ce3a7b8ec099990d79f2207f958a4d6d3fa 67108864 caf1fb3de5d6741a09b4bd858c0ca83bf72d704f:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
