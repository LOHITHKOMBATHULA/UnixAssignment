#!/bin/bash

# Check if a command is provided as an argument
if [ $# -lt 1 ]; then
    echo "Usage: $0 <command> [arguments...]"
    exit 1
fi

# Execute the command with a specific priority using 'nice' command
nice "$@"
