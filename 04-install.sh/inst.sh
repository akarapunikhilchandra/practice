USERID=$(id -u)
if [ $USERID -ne 0 ]
then 
    echo "you are not root user"
fi