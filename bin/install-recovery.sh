#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:32005454:9d8321b0933fb72f68e212b1ff3c23ad567e132e; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:30555466:eb87188d0b928aae0860e283871d7c880b36ff37 EMMC:/dev/block/bootdevice/by-name/recovery 9d8321b0933fb72f68e212b1ff3c23ad567e132e 32005454 eb87188d0b928aae0860e283871d7c880b36ff37:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
