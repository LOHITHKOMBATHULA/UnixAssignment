#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 source_file destination_file"
    exit 1
fi

source_file="$1"
destination_file="$2"

# Check if the source file exists
if [ ! -f "$source_file" ]; then
    echo "Source file $source_file does not exist or is not a regular file"
    exit 1
fi

# Copy the contents of the source file to the destination file using dd
dd if="$source_file" of="$destination_file" bs=4k conv=notrunc

echo "Contents of $source_file copied to $destination_file successfully."

