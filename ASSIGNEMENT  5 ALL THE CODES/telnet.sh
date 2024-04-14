#!/bin/bash

# Check if the user has provided a hostname and port
if [ $# -ne 2 ]; then
    echo "Usage: $0 <hostname> <port>"
    exit 1
fi

# Extract hostname and port
hostname="$1"
port="$2"

# Check if the hostname is reachable
ping -c 1 "$hostname" > /dev/null
if [ $? -ne 0 ]; then
    echo "Host '$hostname' unreachable."
    exit 1
fi

# Connect using telnet
telnet "$hostname" "$port"
