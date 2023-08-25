#!/bin/bash

# our program goal is to install mysql

DATE=$(date +%F)
SCRIPT_NAME=$0
LOGFILE=/opt/$SCRIPT_NAME-$DATE.log

R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

# this function should validate the previous command and inform user it is success or failure
VALIDATE(){
    #$1 --> it will receive the argument1
    if [ $1 -ne 0 ]
    then
        echo -e "$2 ... $R FAILURE $N"
        exit 1
    else
        echo -e "$2 ... $G SUCCESS $N"
    fi
}

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR:: Please run this script with root access"
    exit 1
# else
#     echo "INFO:: You are root user"
fi


# it is our responsibility again to check installation is success or not
yum install mysql -y &>>$LOGFILE


if command -v mysql &>/dev/null; then
    echo -e " $Y MySQL is already installed $N."
else
    echo "MySQL is not installed."
fi


VALIDATE $? "Installing MySQL"

yum install postfix -y &>>$LOGFILE

if command -v postfix &>/dev/null; then
    echo -e " $Y postfix is already installed $N."
else
    echo "postfix is not installed."
fi

VALIDATE $? "Installing postfix"
