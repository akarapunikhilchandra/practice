#!/bin/bash
DATE=$(date +%F)
SCRIPT_NAME=$0
LOGFILE=/opt/$SCRIPT_NAME-$DATE.log

yum install mysql -y &>>LOGFILE

