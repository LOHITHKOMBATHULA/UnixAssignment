#!/bin/bash

# Check if a file is provided as an argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

# Check if the provided file exists
if [ ! -f "$1" ]; then
    echo "File '$1' not found."
    exit 1
fi

# Display the content of the file using 'more' command
more "$1"
