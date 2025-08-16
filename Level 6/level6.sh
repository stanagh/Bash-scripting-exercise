#!/bin/bash

if [ -z "$1" ]; then
    echo "No file or directory specified."
    exit 1
fi

if [ ! -f "$1" ]; then
    echo "File '$1' does not exist."
    exit 1
fi

Count_lines=$(wc -l < "$1")
echo "The file '$1' has $Count_lines lines."
echo "Line count of '$1' logged in line_count.log."
echo "The file '$1' has $Count_lines lines." >> line_count.log

echo "Line count completed successfully."


## This script checks if a file is specified and exists, counts the number of lines in it, and logs the result in line_count.log.