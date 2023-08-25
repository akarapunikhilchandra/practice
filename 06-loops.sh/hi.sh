#!/bin/bash
DATE=$(date +%F)
SCRIPT_NAME=$0
LOGSDIR=/opt/logs/
LOGFILE=$LOGSDIR/$SCRIPT_NAME-$DATE.log
VALIDATE (){
    if [ $1 -e 0 ]
then 
    echo "already present or installed"
else 
    echo "not installed"
fi
}

yum install mysql -y &>>LOGFILE

VALIDATE $? 