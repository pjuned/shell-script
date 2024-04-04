#!/bin/bash

ID=$(id -u)

if [ $(ID) -ne 0 ]
then 
    echo "you are not root user : please run this with Root user"
    exit 1
else 
    echo "you are root user "
fi

yum install mysql -y

if [ $? -ne 0 ]
then 
    echo "ERROR : mysql installation is failed"
else
    echo "mysql installation is successful"
fi

yum install git -y

if [ $? -ne 0 ]
then 
    echo "ERROR: git installation failed"
else
    echo "git installation is successful"
fi