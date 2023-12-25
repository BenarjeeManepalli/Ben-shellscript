#!/bin/bash
ID=$(id -u)
TIMESTAMP=$(date +%F==%X) # %F means full date and %X means full time == diffrenciate between date and time
LOGFILE=(/tmp/$0-$TIMESTAMP.log) # $0 denotes of the file name displaying, log file is storing the tmp location
R="\\e[1;31m"  # R is Red Code.
G="\e[1;32m"  # G is Green Code.
Y="\e[1;33m"  # Y is Yello Code.
N="\e[0m"   # N is Normal Code.

echo "The Script stated at ${TIMESTAMP}" &>>$LOGFILE

VALIDATE()
{
    if [ $1 -ne 0 ]
    then
      echo -e "ERROR :: $2 is .... $R FAILED $N"
      exit 1
    else
       echo -e "$2 is $G SUCCESS $N"  
    fi  # end of the condition.  
}      

if [ $ID -ne 0 ]
then
    echo "$R ERROR :: You are not root user please proceed with root $N"
    exit 1 # 1 is the failuer excuted command
else
    echo "$G You are the Root user proceeding the installtion of the package"
fi  #fi means end of the condition.

yum install mysql -y &>>LOGFILE

VALIDATE $? "Installing the mysql" &>>LOGFILE # Installing the sql package

yum install git -y &>>LOGFILE #installing the git package

VALIDATE $? "installing the git" &>>LOGFILE  #storing the output in to log.
