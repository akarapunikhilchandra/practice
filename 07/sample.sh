DATE=$(date +%F)
SCRIPT_NAME=$0
LOGFILE=/opt/$SCRIPT_NAME-$DATE.log

yum remove mysql -y &>>$LOGFILE