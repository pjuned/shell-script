#!/bin/bash

#SOURCE_DIR="/tmp/shellscript-logs"
SOURCE_DIR="/tmp/"


if [ ! -d $SOURCE_DIR ] # denotes opposite
then
    echo -e "$R Source DIrectory : $SOURCE_DIR does not exist $N"
fi

FILES_TO_DELETE=$(find $SOURCE_DIR -type f -mtime +14 -name "*.log")


while IFS= read -r line; 
do
    # Process each line of the output here
    echo "Deleting fiel: $line"
    rm -rf $line
done <<< $FILES_TO_DELETE