#!/bin/bash
DATE=$(date +%F)
SCRIPT_NAME=$0
LOGSDIR=/opt/logs/
LOGFILE=$LOGSDIR/$SCRIPT_NAME-$DATE.log

yum install mysql -y &>>LOGFILE

