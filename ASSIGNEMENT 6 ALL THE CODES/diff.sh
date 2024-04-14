#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 file1 file2"
    exit 1
fi

file1="$1"
file2="$2"

# Check if the specified files exist
if [ ! -f "$file1" ]; then
    echo "File $file1 does not exist or is not a regular file"
    exit 1
fi

if [ ! -f "$file2" ]; then
    echo "File $file2 does not exist or is not a regular file"
    exit 1
fi

# Compare the contents of the two files using diff
diff "$file1" "$file2"

