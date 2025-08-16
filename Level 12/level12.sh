#!/bin/bash

config_file="config.conf"

# Check if the configuration file exists
if [ ! -f "$config_file" ]; then
    echo "Configuration file '$config_file' does not exist."
    exit 1
fi

# Read the configuration file and print key-value pairs
while IFS="=" read -r key value; do
    echo "Key: $key, Value: $value"
done < "$config_file"   

# This script checks if a configuration file exists, reads key-value pairs from it, and prints them.