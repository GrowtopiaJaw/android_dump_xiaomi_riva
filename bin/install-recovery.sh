#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:38591822:1488b2db181280370377d6ea0a9445e9891ad6c6; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:34389322:2441c6890c571e93994d081d38cad8aea5b96ee6 EMMC:/dev/block/bootdevice/by-name/recovery 1488b2db181280370377d6ea0a9445e9891ad6c6 38591822 2441c6890c571e93994d081d38cad8aea5b96ee6:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
