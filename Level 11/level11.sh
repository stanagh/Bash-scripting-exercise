#!/bin/bash 

DIRECTORY="Fruits"
THRESHOLD=1

# Check disk usage of the specified directory
# If the usage exceeds the threshold, log a warning
# Otherwise, log that the usage is within limits
USAGE=$(du -s "$DIRECTORY" | awk '{print $1}')

if [ ! -d "$DIRECTORY" ]; then
    echo "Directory '$DIRECTORY' does not exist."
    exit 1
fi
if [ "$USAGE" -gt "$THRESHOLD" ]; then
    echo "Warning: The directory '$DIRECTORY' exceeds the threshold of $THRESHOLD KB."
else
    echo "The directory '$DIRECTORY' is within the acceptable usage limit."
fi

echo "Disk usage check completed." >> disk_usage.log
echo "Current usage: $USAGE KB" >> disk_usage.log
echo "Threshold: $THRESHOLD KB" >> disk_usage.log
echo "Check completed successfully." >> disk_usage.log

# This script checks the disk usage of a specified directory and compares it against a threshold, logging the results.