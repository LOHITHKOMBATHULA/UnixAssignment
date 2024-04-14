#!/bin/bash

# Check if the user has provided hostname and command
if [ $# -lt 2 ]; then
    echo "Usage: $0 <hostname> <command>"
    exit 1
fi

# Extract hostname and command
hostname="$1"
shift
command="$@"

# Check if the hostname is reachable
ping -c 1 "$hostname" > /dev/null
if [ $? -ne 0 ]; then
    echo "Host '$hostname' unreachable."
    exit 1
fi

# Execute the command remotely using rsh
rsh "$hostname" "$command"
