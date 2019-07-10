#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:bc7a80288c1be0b5cb2c71b46a39edb189e577eb; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:b9282b8dc6e525ac0dbd98fe8197d3d3a816f99a EMMC:/dev/block/bootdevice/by-name/recovery bc7a80288c1be0b5cb2c71b46a39edb189e577eb 67108864 b9282b8dc6e525ac0dbd98fe8197d3d3a816f99a:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
