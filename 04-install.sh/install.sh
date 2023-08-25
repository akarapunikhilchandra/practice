USERID=$(id -u)
if [ $USERID -ne 0 ]
then 
    echo "ERROR :: PLEASE RUN THIS SCRIPT WITH ROOT ACCESS"
    exit 1
fi
 
yum install tree -y
if [ $? -ne 0 ]
then 
    echo "INSTALLATION OF TREE IS ERROR"
else
    echo "INSTALLATION IF TREE IS SUCCESS"
fi