#!/bin/bash
DATE=$(date +%F)
SCRIPT_NAME=$0
LOG_DIR=/opt/logs
LOGFILE=$LOG_DIR/$SCRIPT_NAME-$DATE.log

yum install mysql -y &>>LOGFILE

