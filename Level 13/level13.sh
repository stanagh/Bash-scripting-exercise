#!/bin/bash

src_dir="Fruits"
backup_dir="Backups"

# Check if source and backup directories are provided
if [[ -z "$src_dir" || -z "$backup_dir" ]]; then
    echo "Usage: $0 <source_directory> <backup_directory>"
    exit 1
fi

# Create backup directory if it doesn't exist
if [ ! -d "$backup_dir" ]; then
    mkdir -p "$backup_dir"
    echo "Backup directory '$backup_dir' created."
fi
timestamp=$(date +"%Y%m%d_%H%M%S")
backup_file="$backup_dir/backup_$(basename "$src_dir")_$timestamp.tar.gz"

# Create a backup of the source directory
if [ ! -d "$src_dir" ]; then
    echo "Source directory '$src_dir' does not exist."
    exit 1
fi
if [ -f "$backup_file" ]; then
    echo "Backup file '$backup_file' already exists. Overwriting."
fi
echo "Creating backup of '$src_dir' in '$backup_file'..."
mkdir -p "$backup_dir"
tar -czf "$backup_file" -C "$(dirname "$src_dir")" "$(basename "$src_dir")"
echo "Backup created: $backup_file"

# Keep only the last 5 backups
ls -1t "$backup_dir"/backup_$(basename "$src_dir")_*.tar.gz | tail -n +6 | xargs -r rm --
echo "Old backups removed, keeping only the last 5 backups."

# This script creates a backup of the specified source directory, compresses it into a tar.gz file, and stores it in the backup directory. It also ensures that only the last 5 backups are kept, deleting older ones.
echo "Backup process completed successfully." >> backup.log
echo "Backup created at: $backup_file" >> backup.log
echo "Timestamp: $timestamp" >> backup.log
echo "Backup log updated." >> backup.log   