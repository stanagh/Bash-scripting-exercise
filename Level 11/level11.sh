#!/bin/bash 

DIR=${1:-/}
THRESHOLD=${2:-80}

USAGE=$(df -h "$DIR" | awk 'NR==2 {gsub("%","",$5); print $5}')

if [ "$USAGE" -ge "$THRESHOLD" ]; then
    echo "Alert: Disk usage for $DIR is at ${USAGE}% (threshold: ${THRESHOLD}%)"
fi