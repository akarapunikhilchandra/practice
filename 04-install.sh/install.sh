USERID=$(id -u)
if [ $USERID -ne 0 ]
then 
    echo "ERROR :: PLEASE RUN THIS SCRIPT WITH ROOT ACCESS"
    exit 1
fi