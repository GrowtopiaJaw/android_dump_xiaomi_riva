#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:38626638:b79b38c463a0fa6926a96f0553674295692ed0e5; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:34420042:a25c416e882f5626447ae0e77da4f2f01275558c EMMC:/dev/block/bootdevice/by-name/recovery b79b38c463a0fa6926a96f0553674295692ed0e5 38626638 a25c416e882f5626447ae0e77da4f2f01275558c:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
