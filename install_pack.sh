#!/bin/bash

ID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-TIMESTAMP.log"

echo -e "script started executing at $TIMESTAMP" &>> $LOGFILE

VALIDATE() {
    if [ $1 -ne 0 ]
        echo -e  "$2 is.. $R failed $N "
    else
        echo -e  "$2 is..$G Success $N "
    fi

}
if [ $ID -ne 0 ]
then
    echo -e "$R you are not a root user $N"
    exit 1
else
    echo "you are a root user"
fi

#installing multiple packages like git, mysql, postfix, net-tools using for loop

for package in $@       # $@ means All Arguments passed
do
    yum list installed $package &>> $LOGFILE
    if [ $? -ne 0 ]
    then
        yum install $package -y &>> $LOGFILE
        VALIDATE $? "installed of $package"
    else
        echo -e "$package is already installed..$Y skipping $N"
done

