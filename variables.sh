#!/bin/bash

echo "demo on varibales"

PERSON1=$1
PERSON2=$2

echo "$PERSON1  : Hello $PERSON2, Good Morning"
echo "$PERSON2 : Hello $PERSON1 I am fine, How are you $PERSON1"
echo "$PERSON1 : I am fine $PERSON2"

DATE=$(date)

echo " the date & time is $DATE"

echo "Enter username "

read -s USERNAME # the value entered will be auto attached to USERNAME variable

echo "username is $USERNAME"

FRUITS=("orange" "banana" "grapes")

echo "first value : ${FRUITS[0]}"
echo "first value : ${FRUITS[1]}"
echo "first value : ${FRUITS[2]}"
