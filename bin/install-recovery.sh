#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:38624590:752c9d2a90b8ba3d9b72bc7f5f8691a444bc552e; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:34417994:21056a275ebe29692d04504a0bb54c51ef8f1863 EMMC:/dev/block/bootdevice/by-name/recovery 752c9d2a90b8ba3d9b72bc7f5f8691a444bc552e 38624590 21056a275ebe29692d04504a0bb54c51ef8f1863:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
