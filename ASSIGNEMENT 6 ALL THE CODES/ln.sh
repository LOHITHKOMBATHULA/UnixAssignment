#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 source_file link_name"
    exit 1
fi

source_file="$1"
link_name="$2"

# Check if the specified source file exists
if [ ! -e "$source_file" ]; then
    echo "Source file $source_file does not exist"
    exit 1
fi

# Create a hard link
ln "$source_file" "$link_name"

if [ $? -eq 0 ]; then
    echo "Hard link created successfully: $link_name"
else
    echo "Failed to create hard link"
fi

# Create a symbolic link
ln -s "$source_file" "$link_name.sym"

if [ $? -eq 0 ]; then
    echo "Symbolic link created successfully: $link_name.sym"
else
    echo "Failed to create symbolic link"
fi

