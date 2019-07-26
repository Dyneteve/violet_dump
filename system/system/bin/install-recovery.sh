#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:f942e095953dd3641e5921bfd8136b9bcb457dd4; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:b4c815104877e17b144c69324390858805b52886 EMMC:/dev/block/bootdevice/by-name/recovery f942e095953dd3641e5921bfd8136b9bcb457dd4 67108864 b4c815104877e17b144c69324390858805b52886:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
