#!/bin/bash 

DIR=".."
Log="_logs.txt"

# Check if the directory exists
if [ ! -d "$DIR" ]; then 
    echo "Directory '$DIR' does not exist or is not accessible."
    exit 1
fi

# Monitor changes in the directory and log them 
fswatch -r "$DIR" | while read event; do
    if [ -e "$event" ]; then 
        echo "$(date '+%Y-%m-%d %H:%M:%S') - File changed: $event" >> "$Log"
    else
        echo "$(date '+%Y-%m-%d %H:%M:%S') - File deleted: $event" >> "$Log"
    fi
done    

# This script monitors changes in the specified directory and logs file changes or deletions with timestamps.
# Fswatch is used to detect changes (but not currently installed in the environment / not working).