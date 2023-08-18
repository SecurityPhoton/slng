#!/bin/bash

mkdir /etc/syslog.pipes
mknod /etc/syslog.pipes/criticalMessages p
chmod 600 /etc/syslog.pipes/criticalMessages
mv syslogMailer /usr/bin/syslogMailer

apt install mailutils postfix -y

apt remove exim4
apt-get autoremove

