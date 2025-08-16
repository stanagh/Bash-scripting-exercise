#!/bin/bash

# This script provides a menu for system information tasks
while true; do
    echo "Select an option:"
    echo "1) Check disk space"
    echo "2) Show system uptime"
    echo "3) List users"
    echo "4) Exit"
    read -p "Enter your choice [1-4]: " choice

# Validate input
    case $choice in
        1)
            echo "Disk space usage:"
            df -h
            ;;
        2)
            echo "System uptime:"
            uptime
            ;;
        3)
            echo "List of users:"
            cut -d: -f1 /etc/passwd
            ;;
        4)
            echo "Exiting."
            break
            ;;
        *)
            echo "Invalid option. Please try again."
            ;;
    esac
    echo
done

# This script provides a simple menu for users to check disk space, system uptime, or list users. It continues to prompt until the user chooses to exit.
# The script uses a while loop to display options and processes user input with a case statement.