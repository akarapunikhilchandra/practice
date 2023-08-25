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

if command -v mysql &>/dev/null; then
    echo -e "${G}MySQL is already installed.${N}"
else
    echo -e "${Y}MySQL is not installed. Installing MySQL...${N}"
    yum install mysql -y &>>LOGFILE
    # For example: sudo apt-get install mysql-server
fi


VALIDATE $? "installing"
if command -v postfix &>/dev/null; then
    echo -e "${G}postfix is already installed.${N}"
else
    echo -e "${Y}postfix is not installed. Installing postfix...${N}"
    yum install postfix -y &>>LOGFILE
    # For example: sudo apt-get install mysql-server
fi

VALIDATE $? "installing"
