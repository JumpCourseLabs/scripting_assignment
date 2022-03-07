#!/bin/sh

dusage=$(df -Ph | grep -vE '^tmpfs|cdrom|mapper\Filesystem' | sed s/%//g | awk '{ if($5 > 10) print $0;}')
fscount=$(echo "$dusage" | wc -l)

checkstats() {
  if [ $fscount -ge 10 ]; then
    echo "$dusage" | "Disk Space Alert On $(hostname) at $(date +"%T")" >>disk_alert_$(date +"%Y%m%d").log
  else
    echo "Disk usage is UNDER threshold on $(hostname) at $(date +"%T")" >>disk_alert_$(date +"%Y%m%d").log
  fi
  echo "Disk Check Complete. Thank you for your patience"
  exit 0
}

echo "Checking disk usage stats, System may freeze momentarily..."
checkstats
