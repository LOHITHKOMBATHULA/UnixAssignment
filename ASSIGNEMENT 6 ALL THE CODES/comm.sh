#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 file1 file2"
    exit 1
fi

file1="$1"
file2="$2"

if [ ! -f "$file1" ]; then
    echo "File $file1 does not exist or is not a regular file"
    exit 1
fi

if [ ! -f "$file2" ]; then
    echo "File $file2 does not exist or is not a regular file"
    exit 1
fi

echo "Lines common to both files:"
comm -12 "$file1" "$file2"

echo "Lines unique to $file1:"
comm -23 "$file1" "$file2"

echo "Lines unique to $file2:"
comm -13 "$file1" "$file2"

