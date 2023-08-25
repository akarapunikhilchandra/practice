#!/bin/bash

USERID=$(id -u)
VALIDATE (){
    if [ $1 -ne 0 ]
then
    echo " $2 ... FAILURE"
    exit 1
else 
    echo " $2 ... SUCESS"
fi
}
if [ $USERID -ne 0 ]
then 
    echo "ERROR :: Please Run This Sript With Root Access"
    exit 1
fi

yum remove mysql -y
VALIDATE $? "Installing mysql"