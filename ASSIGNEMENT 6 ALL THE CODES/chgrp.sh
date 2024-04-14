#!/bin/bash

if [ "$#" -lt 2 ]; then
    echo "Usage: $0 groupname file1 [file2 ...]"
    exit 1
fi

groupname="$1"

# Check if the specified group exists
if ! getent group "$groupname" &>/dev/null; then
    echo "Group $groupname does not exist"
    exit 1
fi

# Shift the arguments to skip the groupname
shift

# Change the group ownership of each file or directory
for item in "$@"; do
    if [ ! -e "$item" ]; then
        echo "File or directory $item does not exist"
        continue
    fi

    chgrp "$groupname" "$item"
    echo "Changed group ownership of $item to $groupname"
done

