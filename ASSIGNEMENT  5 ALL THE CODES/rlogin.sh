#!/bin/bash

# Check if the user has provided a hostname
if [ $# -eq 0 ]; then
    echo "Usage: $0 <hostname>"
    exit 1
fi

# Check if the specified hostname is reachable
ping -c 1 "$1" > /dev/null
if [ $? -ne 0 ]; then
    echo "Host '$1' unreachable."
    exit 1
fi

# Prompt for username
read -p "Username: " username

# Connect using rlogin
rlogin "$1" -l "$username"
