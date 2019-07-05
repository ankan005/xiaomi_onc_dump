#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:50d10b6a3e252748821bcebbaf3046db375874c9; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:bb2537254d4ac58d7a17d88f1da6eeada9badd9a EMMC:/dev/block/bootdevice/by-name/recovery 50d10b6a3e252748821bcebbaf3046db375874c9 67108864 bb2537254d4ac58d7a17d88f1da6eeada9badd9a:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
