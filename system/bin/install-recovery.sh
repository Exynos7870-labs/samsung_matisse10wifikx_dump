#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/13540000.dwmmc0/by-name/RECOVERY:17477632:8f69c835af1d006b97dc783a2ce154b63bbb39f0; then
  applypatch EMMC:/dev/block/platform/13540000.dwmmc0/by-name/BOOT:16818176:525296e25ab20b169e29ce960e895acc49354852 EMMC:/dev/block/platform/13540000.dwmmc0/by-name/RECOVERY 8f69c835af1d006b97dc783a2ce154b63bbb39f0 17477632 525296e25ab20b169e29ce960e895acc49354852:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
