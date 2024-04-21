#! /bin/bash

set -x

SOURCE_DIR="/tmp/shellscript-logs/"

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"


if [ ! -d "$SOURCE_DIR" ];
then
echo -e "$R Source Directory $SOURCE_DIR does not exist $N"
exit 1
fi

FILES_TO_DELETE=($(find "$SOURCE_DIR" -type f +mtime +14 -name "*.log"))

while IFS= read -r line
do
    echo "Deleting file : $line"
    rm -rf $line
done <<< $FILES_TO_DELETE

