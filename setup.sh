#!/bin/bash

echo "Update and setup... ==================================="
apt update
apt install mc syslog-ng -y
echo "Copy config file ...==================================="

cp ./system-log.conf /etc/syslog-ng/conf.d/system-log.conf
echo "Creating dir for logs ...=============================="
mkdir /var/log/system-log
ls -lah /var/log/system-log
echo "Restarting service ...================================="
service syslog-ng status
service syslog-ng restart
service syslog-ng status
echo "Checking networking ...================================"
netstat -nlp | grep 514

echo " _____  _    _   ____    _        _____    ___    "
echo "/  ___|| |  | | / __ |  | |      /  /\ \  / /\_\  "
echo "\ \`--.  \ \/ / | |___   | |      | |  | || |      "
echo " \`--. \  | |   \___  \  | |      | |  | || |  __  "
echo "/\__/ /  | |   /\__/ /  | |_____ | \__/ ||  \_/ | "
echo "\____/   |_|   \____/   |______|  \____/  \____/  "
