#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:a649a5c0eaae883db223543c7d00ff9978617a50; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:5b439752d53bcc843e124560ee335f1e30e30587 EMMC:/dev/block/bootdevice/by-name/recovery a649a5c0eaae883db223543c7d00ff9978617a50 67108864 5b439752d53bcc843e124560ee335f1e30e30587:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
