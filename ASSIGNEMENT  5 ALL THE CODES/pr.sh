#!/bin/bash

# Check if the user has provided a filename
if [ $# -eq 0 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

# Check if the specified file exists
if [ ! -f "$1" ]; then
    echo "File '$1' not found."
    exit 1
fi

# Print the file using 'pr' command
pr "$1
