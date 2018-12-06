#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:38622542:948fc2af1a15a8cd14f6144958eefcd2e6a402af; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:34417994:f3cd8427e90393dcb7d2674502235cf601c0d196 EMMC:/dev/block/bootdevice/by-name/recovery 948fc2af1a15a8cd14f6144958eefcd2e6a402af 38622542 f3cd8427e90393dcb7d2674502235cf601c0d196:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
