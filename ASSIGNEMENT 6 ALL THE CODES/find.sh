#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 directory"
    exit 1
fi

directory="$1"

# Check if the specified directory exists
if [ ! -d "$directory" ]; then
    echo "Directory $directory does not exist or is not a directory"
    exit 1
fi

# Search for files in the specified directory and its subdirectories
echo "Searching for text files in directory $directory and its subdirectories:"
find "$directory" -type f -name "*.txt"

