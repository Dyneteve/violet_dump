#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:68b80d10b15e71c84ed0ca44dac7095cdcefb7fd; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:717036ffc4447f5901d073e3f2381033f7553505 EMMC:/dev/block/bootdevice/by-name/recovery 68b80d10b15e71c84ed0ca44dac7095cdcefb7fd 67108864 717036ffc4447f5901d073e3f2381033f7553505:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
