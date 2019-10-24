#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:3929097a30cbcd229faf79238f56ed3e0924969f; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:6188de4dd6ad9d14bf5851eb7e308a9d2a80f26e EMMC:/dev/block/bootdevice/by-name/recovery 3929097a30cbcd229faf79238f56ed3e0924969f 67108864 6188de4dd6ad9d14bf5851eb7e308a9d2a80f26e:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
