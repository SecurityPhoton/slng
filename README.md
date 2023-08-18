# Syslog NG additional configuration file

Run setup.sh to provision configuration
```
chmod 700 ./setup.sh
./setup.sh
```
To check 
```
echo "myapp.sh: This is a test message" | nc -w1 -u localhost 514
echo "myapp.sh: This is a test message" | nc -w1 -u 192.168.2.100 514
```
# Alerting to Email on some messages

Run alerting/init.sh to provision config for creating the named pipe and copy bash script to send email.

Setup a postfix accordingly to your envirement. Or you can use a sample file main.cf in templates folder.

After all add crontab line to run the script:
```
crontab -e

*/5 * * * * /usr/bin/syslogMailer < /etc/syslog.pipes/criticalMessages > /dev/null 2>&1
```
