#!/bin/bash

DIR="Fruits"

if [ ! -d "$DIR" ]; then
    echo "Directory '$DIR' does not exist."
    exit 1
fi

find "$DIR" -type f -name "*.txt" -exec ls -lh {} + | sort -k 5,5 -h |awk '{ print $9 ": " $5 }'