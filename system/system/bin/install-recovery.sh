#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:5597edc1badb30e1b534e05149e6f2f371879468; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:e65d887da8d43d9e41720786823937cc5b6cee0b EMMC:/dev/block/bootdevice/by-name/recovery 5597edc1badb30e1b534e05149e6f2f371879468 67108864 e65d887da8d43d9e41720786823937cc5b6cee0b:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
