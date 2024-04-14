#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 file_to_print"
    exit 1
fi

file_to_print="$1"

# Check if the specified file exists
if [ ! -f "$file_to_print" ]; then
    echo "File $file_to_print does not exist"
    exit 1
fi

# Print the file using lp
lp "$file_to_print"

if [ $? -eq 0 ]; then
    echo "Print job submitted successfully"
else
    echo "Failed to submit print job"
fi

