#!/bin/bash

# our program goal is to install mysql

DATE=$(date +%F)
SCRIPT_NAME=$0
LOGFILE=/opt/$SCRIPT_NAME-$DATE.log

yum install git -y &>>LOGFILE
yum install mysql -y &>>LOGFILE