#!/bin/bash

echo "Docker container has been started"
echo "$(date)"

touch /etc/cron.d/scheduler.txt
touch /var/log/cron.log
# Setup a cron schedule
echo "KINDLE_HOME_DIR=$KINDLE_HOME_DIR 
EMAIL_TO=$EMAIL_TO 
EMAIL_FROM=$EMAIL_FROM 
EMAIL_USERNAME=$EMAIL_USERNAME 
EMAIL_PASSWORD=$EMAIL_PASSWORD 
EMAIL_RELAY=$EMAIL_RELAY 
EMAIL_ENCRYPTION_METHOD=$EMAIL_ENCRYPTION_METHOD 
EMAIL_PORT=$EMAIL_PORT 
28 * * * * /home/run.sh >> /var/log/cron.log 2>&1
# This extra line makes it a valid cron" > /etc/cron.d/scheduler.txt

chmod 0644 /etc/cron.d/scheduler.txt

# Start the run once job.
crontab /etc/cron.d/scheduler.txt

crontab -l

cron && tail -f /var/log/cron.log
# crond -f

# sh /home/run.sh
