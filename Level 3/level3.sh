#!/bin/bash

if [ -f "log.txt" ]; then
  echo "Log file exists."
else
  echo "Log file does not exist. Creating it now."
  touch log.txt
fi

## This script checks if a file named "heroes.txt" exists. If it does, it prints a message confirming its existence. If not, it creates the file and informs the user that it has been created.
echo "Current date and time: $(date)" >> log.txt
echo "Log file updated with current date and time."

# This script appends the current date and time to the "log.txt" file, ensuring that the log is updated with the latest information.