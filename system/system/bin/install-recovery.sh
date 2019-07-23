#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:8982c57c49c45d460aae7d70d04e8f559b0d42d5; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:218e2dbcd7e35185cf1a511d5519572aec4918fd EMMC:/dev/block/bootdevice/by-name/recovery 8982c57c49c45d460aae7d70d04e8f559b0d42d5 67108864 218e2dbcd7e35185cf1a511d5519572aec4918fd:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
