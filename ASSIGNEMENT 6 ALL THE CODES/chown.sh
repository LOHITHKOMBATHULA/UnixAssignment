#!/bin/bash

if [ "$#" -lt 3 ]; then
    echo "Usage: $0 username groupname file1 [file2 ...]"
    exit 1
fi

username="$1"
groupname="$2"

# Check if the specified user and group exist
if ! id -u "$username" &>/dev/null; then
    echo "User $username does not exist"
    exit 1
fi

if ! getent group "$groupname" &>/dev/null; then
    echo "Group $groupname does not exist"
    exit 1
fi

# Shift the arguments to skip the username and groupname
shift 2

# Change the ownership of each file or directory
for item in "$@"; do
    if [ ! -e "$item" ]; then
        echo "File or directory $item does not exist"
        continue
    fi

    chown "$username:$groupname" "$item"
    echo "Changed ownership of $item to $username:$groupname"
done

