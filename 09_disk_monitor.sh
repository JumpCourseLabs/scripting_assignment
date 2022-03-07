#!/bin/sh

dusage=$(df -Ph | grep -vE '^tmpfs|cdrom|mapper\Filesystem' | sed s/%//g | awk '{ if($5 > 10) print $0;}')
fscount=$(echo "$dusage" | wc -l)
if [ $fscount -ge 10 ]; then
  echo "$dusage" | "Disk Space Alert On $(hostname) at $(date +"%Y%m%d")" >>disk_alert_$(date +%s).log
else
  echo "Disk usage is under threshold on $(hostname) at $(date +"%Y%m%d")" >>disk_alert_$(date +%s).log
fi
