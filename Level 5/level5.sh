#!/bin/bash

mkdir "Peripherals" 
cd "Peripherals"
touch keyboard.txt mouse.txt monitor.txt
echo "Peripherals directory created with files: keyboard.txt, mouse.txt, monitor.txt."

if [ -f "monitor.txt" ]; then
    mkdir "Archive"
    mv "monitor.txt" "Archive/"
    echo "Monitor file moved to Archive directory."
    echo "Monitor file moved to Archive directory." >> peripherals.log
else
    echo "Monitor file does not exist."
fi

## This script creates a directory named "Peripherals", adds three files to it, and moves the "monitor.txt" file to an "Archive" directory if it exists.
## The script also logs the action of moving the monitor file to the archive directory in peripherals.log.

echo "Content of Peripherals directory:"
ls Peripherals

echo "Content of Archive directory:"
ls Archive