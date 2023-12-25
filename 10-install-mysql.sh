#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
echo "ERROR:: please run with root access"
else
echo "you are the Root user please procced the SQL Installation"
fi #here denotes endof the if condition

echo "=================="

if [ $? -ne 0 ]  
#$? denote exist status is true if you run the correct command the value is 0 if you run the wromg command the value is other than 0 i.e 1
then
echo "ERROR :: Not able to install the SQL"
exit 1
else
echo "installing the SQL"
fi

yum install mysql -y

if [ $? -ne 0 ] # $? denote exist status is true if you run the correct command the value is 0 if you run the wromg command the value is other than 0 i.e 1
then
echo "ERROR :: Not able to install git"
exit
else
echo " installing the git"
fi  # fi denotes end of the if condition

yum install git -y

echo "the git and SQL pacakges successfully installed"



