#!/bin/bash

APP_LOGS_DIR=/opt/logs

DATE=$(date +%F:%H:%M:%S)
LOGSDIR=/opt/logs/
# /home/centos/shellscript-logs/script-name-date.log
SCRIPT_NAME=$0
LOGFILE=$LOGSDIR/$SCRIPT_NAME-$DATE.log

FILES_TO_DELETE=$(find $APP_LOGS_DIR -name "*.log" -type f -mtime +14)

echo "script started executing at $DATE" &>>$LOGFILE

while read line
do
    echo "Deleting $line" &>>$LOGFILE
    rm -rf $line
done <<< $FILES_TO_DELETE