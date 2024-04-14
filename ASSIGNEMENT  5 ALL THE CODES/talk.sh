#!/bin/bash

# Check if the user has provided a remote user and host
if [ $# -ne 2 ]; then
    echo "Usage: $0 <remote_user> <remote_host>"
    exit 1
fi

# Extract remote user and host
remote_user="$1"
remote_host="$2"

# Check if the remote host is reachable
ping -c 1 "$remote_host" > /dev/null
if [ $? -ne 0 ]; then
    echo "Host '$remote_host' unreachable."
    exit 1
fi

# Start the talk session
talk "$remote_user"@"$remote_host"
