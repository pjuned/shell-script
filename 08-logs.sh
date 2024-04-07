#!/bin/bash

echo "script name : $0"

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOGFILE="/tmp/$0-$TIMESTAMP.log"
VALIDATE(){
    if [ $1 -ne 0 ]
then 
    echo -e "ERROR : $2  is $R failed $N"
else
    echo -e "$2 is $G successful "
fi

}

if [ $(ID) -ne 0 ]
then 
    echo "you are not root user : please run this with Root user"
    exit 1
else 
    echo "you are root user "
fi

yum install mysql -y &>> $LOGFILE

VALIDATE $? "Installing Mysql"

yum install git -y &>> $LOGFILE


VALIDATE $? "Git Installation"


