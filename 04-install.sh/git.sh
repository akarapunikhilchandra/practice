#!/bin/bash
DATE=$(date +%F)
SCRIPT_NAME=$0
LOGFILE=/opt/$SCRIPT_NAME-$DATE.log
USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo "you are not root user please again try with sudo permissions"
    exit 1
fi

# Check if Git is already installed
if which mysql >/dev/null 2>&1; then 
    echo "mysql is already installed."
else
    echo "mysql is not installed. Installing Git..."
    sudo yum install mysql -y &>>LOGFILE
    echo "mysql has been installed." 
fi
