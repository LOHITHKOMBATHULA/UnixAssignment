#!/bin/bash

# Prompt the user to change their password
echo "Changing password..."
passwd

# Check if the password change was successful
if [ $? -eq 0 ]; then
    echo "Password changed successfully."
else
    echo "Failed to change password."
fi
