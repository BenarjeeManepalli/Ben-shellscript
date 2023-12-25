#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%X) # %F means full date and %X means full time == diffrenciate between date and time
LOGFILE="/tmp/$0-$TIMESTAMP.log" # $0 denotes of the file name displaying, log file is storing the tmp location
R="\e[31m"  # R is Red Code.
G="\e[32m"  # G is Green Code.
Y="\e[33m"  # Y is Yello Code.
N="\e[0m"   # N is Normal Code.

echo "$G The Script stated at ${TIMESTAMP}" &>> $LOGFILE

VALIDATE(){
    if [ $1 -ne 0 ]
    then
      echo -e "ERROR:: $2 .... $R FAILED $N"
      exit 1
       else
          echo -e "$2 ..... $G SUCCESS $N"  
    fi  # end of the condition.  
}       

if [ $ID -ne 0 ]
then
    echo -e "$R ERROR :: You are not root user please proceed with root $N"
    exit 1 # 1 is the failure excuted command
else
    echo -e "$G You are the Root user proceeding the installtion of the package"
fi  #fi means end of the condition.

yum install mysql -y &>> $LOGFILE

VALIDATE $? "Installing the mysql"

yum install git -y &>> $LOGFILE #installing the git package

VALIDATE $? "installing the git"   #storing the output in to log.
