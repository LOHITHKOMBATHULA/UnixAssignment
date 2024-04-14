#!/bin/bash

# Check if the script is executed with correct arguments
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 frequency command script_name"
    echo "Example: $0 '0 * * * *' '/path/to/command.sh' 'my_script'"
    exit 1
fi

frequency="$1"
command="$2"
script_name="$3"

# Add the new cron job
echo "$frequency $command" >> "$HOME/.cron/$script_name"

echo "Cron job '$script_name' added successfully."

