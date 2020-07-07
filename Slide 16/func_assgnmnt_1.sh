#!/bin/bash/

#Monitoring Disk Space Utilization and if the disk usage goes beyond 10% generate logfile with timestamp.

diskuse() {
space=`df -h | awk '{print $5}' | grep % | grep -v Use | sort -n | tail -1 | cut -d "%" -f1`
alertvalue="10"
if [ "$space" -ge "$alertvalue" ]; then
  echo "Atleast one of the disk utilization more than 10%! at `date +%Y-%m-%d_%H:%M:%S`" >> disk_usage.log
fi
}
diskuse                               
