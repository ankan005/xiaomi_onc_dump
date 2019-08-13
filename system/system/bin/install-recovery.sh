#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:01addda041a38cf2b58bfd742b06ae946e13e66d; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:e2e1474224200c50b0c4b98d764d9aaf0890464b EMMC:/dev/block/bootdevice/by-name/recovery 01addda041a38cf2b58bfd742b06ae946e13e66d 67108864 e2e1474224200c50b0c4b98d764d9aaf0890464b:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
