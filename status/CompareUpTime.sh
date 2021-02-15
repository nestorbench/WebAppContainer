#!/bin/bash
ReadyTime=10
AppUptime=$((`cut -d. -f1 /proc/uptime`-`cat /var/www/html/status/StartTime`))
[[ $AppUptime -lt $ReadyTime ]]&&IsReady='{"ready": false}'
[[ $AppUptime -ge $ReadyTime ]]&&IsReady='{"ready": true}'
[[ $IsReady == "" ]]&&echo " ERROR: Uptime check failed. Please check distro"
echo $IsReady 

