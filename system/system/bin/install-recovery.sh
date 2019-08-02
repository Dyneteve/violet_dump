#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:8c57241e0247cbe8c8a5bdf67ff48072e610b457; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:e2aa620bb882f60044c8e08dd367c0905ee44950 EMMC:/dev/block/bootdevice/by-name/recovery 8c57241e0247cbe8c8a5bdf67ff48072e610b457 67108864 e2aa620bb882f60044c8e08dd367c0905ee44950:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
