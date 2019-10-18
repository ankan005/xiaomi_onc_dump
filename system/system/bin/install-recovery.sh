#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:e81a4d69769a8511bfe0ae863474cb95a9c3a880; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:b7ee0f878b850450a7eb9d8623c7c2af4231381a EMMC:/dev/block/bootdevice/by-name/recovery e81a4d69769a8511bfe0ae863474cb95a9c3a880 67108864 b7ee0f878b850450a7eb9d8623c7c2af4231381a:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
