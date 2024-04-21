#!/bin/bash

SOURCE_DIR="/tmp/shellscript-logs"

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ ! -d "$SOURCE_DIR" ]; then
    echo -e "$R Source Directory $SOURCE_DIR does not exist $N"
    exit 1
fi

FILES_TO_DELETE=($(find "$SOURCE_DIR" -type f -mtime +14 -name "*.log"))

for file in "${FILES_TO_DELETE[@]}"; do
    echo "Deleting file : $file"
    rm -rf "$file"
done
