#!/bin/bash
ReadyTime=10
#AppUptime=$((`cut -d. -f1 /proc/uptime`-`cat /var/www/html/status/StartTime`))

PID=`ps -ef | grep apache2|grep www-data|awk {'print $2'}|head -1`
AppUptime=`ps -o etimes= -p "$PID"`
[[ $AppUptime -lt $ReadyTime ]]&&IsReady='{"ready": false}'
[[ $AppUptime -ge $ReadyTime ]]&&IsReady='{"ready": true}'
[[ $IsReady == "" ]]&&echo " ERROR: Uptime check failed. Please check distro"
echo $IsReady 

