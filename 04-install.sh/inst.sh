USERID=$(id -u)
if [ $USERID -ne 0 ]
then 
    echo "you are not root user"
else
    echo "you are root user"
fi