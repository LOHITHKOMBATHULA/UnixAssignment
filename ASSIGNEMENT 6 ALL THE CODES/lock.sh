#!/bin/bash

LOCKFILE=/var/lock/my_script.lock

# Check if lock file exists
if [ -e "$LOCKFILE" ]; then
    echo "Another instance of the script is already running. Exiting."
    exit 1
fi

# Create lock file
touch "$LOCKFILE"

# Perform operations that require exclusive access to the resource
echo "Performing operations..."
sleep 10

# Remove lock file when done
rm "$LOCKFILE"

echo "Operations completed."

