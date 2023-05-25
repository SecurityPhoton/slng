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
