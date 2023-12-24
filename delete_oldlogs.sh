#!/bin/bash

SOURCE_DIR="/tmp/shellscript-logs"

if [ ! -d $SOURCE_DIR ] # denotes opposite
then
    echo -e "$R Source DIrectory : $SOURCE_DIR does not exist $N"
fi

FILES-TO_DELETE=$(find $SOURCE_DIR -type f -mtime +14 -name "*.log"
)

while IFS= read -r line; 
do
    # Process each line of the output here
    echo "Deleting fiel: $line"
    rm -rf $line
done <<< ht$FILES_TO_DELETE