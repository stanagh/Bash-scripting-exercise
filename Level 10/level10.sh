#!/bin/bash

mkdir -p Bonus_Round
for i in {1..5}; do
    lines=$((RANDOM % 11 + 10))
    > "Bonus_Round/file${i}.txt"
    for ((j=1; j<=lines; j++)); do
        if (( RANDOM % 10 == 0 )); then
            echo "Archive" >> "Bonus_Round/file${i}.txt"
        else
            echo "Line $j of file${i}" >> "Bonus_Round/file${i}.txt"
        fi
    done
done

echo "Files sorted by size:"
ls -lhS Bonus_Round/file*.txt

mkdir -p Archives
for f in Bonus_Round/file*.txt; do
    if grep -q 'Archive' "$f"; then
        mv "$f" Archive/
    fi
done

echo "Files containing 'Archive' moved to Archives directory."

# This script creates a directory named "Bonus_Round", generates 5 files with random lines, sorts them by size, and moves files containing the word "Archive" to an "Archives" directory.