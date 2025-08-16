#!/bin/bash

mkdir Backup
## mkdir -p Backup
cp -r "../Level 1/Fruits/" Backup/
ls Backup/Fruits
echo "Backup of Fruits directory created in Backup folder."

## This script creates a directory named "Backup" and copies the "Fruits" directory into it, ensuring that a backup of the Fruits directory is maintained.

echo "Backup completed successfully." >> fruits_backup.log