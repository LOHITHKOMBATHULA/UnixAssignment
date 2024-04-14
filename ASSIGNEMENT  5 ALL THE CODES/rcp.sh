#!/bin/bash

# Check if the user has provided source and destination
if [ $# -ne 2 ]; then
    echo "Usage: $0 <source_file> <destination_host>:<destination_path>"
    exit 1
fi

# Extract source file and destination host:path
source_file="$1"
destination_host="${2%:*}"
destination_path="${2#*:}"

# Check if the source file exists
if [ ! -f "$source_file" ]; then
    echo "Source file '$source_file' not found."
    exit 1
fi

# Check if the destination host is reachable
ping -c 1 "$destination_host" > /dev/null
if [ $? -ne 0 ]; then
    echo "Destination host '$destination_host' unreachable."
    exit 1
fi

# Copy using rcp
rcp "$source_file" "$destination_host":"$destination_path"
