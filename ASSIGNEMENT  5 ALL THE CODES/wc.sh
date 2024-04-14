#!/bin/bash

# Check if the user has provided a filename
if [ $# -ne 1 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

# Check if the specified file exists
if [ ! -f "$1" ]; then
    echo "File '$1' not found."
    exit 1
fi

# Count lines, words, and characters using wc
wc "$1"
