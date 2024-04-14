#!/bin/bash

if [ "$#" -eq 0 ]; then
    # Display current mesg status
    echo "Current mesg status: $(mesg)"
elif [ "$#" -eq 1 ] && [ "$1" = "y" ] || [ "$1" = "n" ]; then
    # Change mesg status
    mesg "$1"
    echo "Mesg status set to $1"
else
    echo "Usage: $0 [y|n]"
    exit 1
fi

