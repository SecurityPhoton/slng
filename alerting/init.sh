#!/bin/bash

mkdir /etc/syslog.pipes
mknod /etc/syslog.pipes/criticalMessages p
chmod 600 /etc/syslog.pipes/criticalMessages
mv syslogMailer /usr/bin/syslogMailer
 
