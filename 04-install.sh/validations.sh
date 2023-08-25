USERID=$(id -u)
VALIDATE (){
    if [ $1 -ne 0 ] 
then 
    echo "install failure"
    exit 1
else
    echo "install success"
fi
}

yum install mysql -y
VALIDATE $? "INSTALLING MYSQL"