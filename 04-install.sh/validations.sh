USERID=$(id -u)
VALIDATE (){
    if [ $1 -ne 0 ] 
then 
    echo "$2 failure"
    exit 1
else
    echo "$2 success"
fi
}

yum install mysql -y
VALIDATE $? "INSTALLING MYSQL"