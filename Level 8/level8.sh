#!/bin/bash

DIR="_logs"
ErrorType="Warning:"

if [ ! -d "$DIR" ]; then
    echo "Directory does not exist."
    exit 1
fi

grep -l "$ErrorType" "$DIR"/*.log | while read -r file; do
    echo "Processing file: $file"
    grep "$ErrorType" "$file" | sort
done

## This script checks if the "_logs" directory exists, searches for files containing a specific error type, and processes them by sorting the error messages.