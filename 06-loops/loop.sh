#!/bin/bash
DATE=$(date +%F)
LOGSDIR=/opt/logs/
SCRIPT_NAME=$0
LOGFILE=$LOGSDIR/$SCRIPT_NAME-$DATE.log


yum install tree -y &>> $LOGFILE
