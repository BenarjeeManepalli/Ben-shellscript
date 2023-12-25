#!/bin/bash

ID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]  
        # $? denote exist status is true if you run the correct command the value is 0 if you run the wromg command the value is other than 0 i.e 1
    then
            echo "ERROR :: $2 ---- FAILED"
            exit 1
        else
            echo " $2 ----- SUCCESS"
    fi
}

if [ $ID -ne 0 ]
then
    echo "ERROR:: please run with root access"
    exit 1
else
    echo "you are the Root user please procced the SQL Installation"
fi #here denotes endof the if condition

yum install mysql -y

VALIDATE $? "installing the SQL"

yum install git -y

VALIDATE $? "installing the git" 

yum install web -y

VALIDATE $? "installing the web"


