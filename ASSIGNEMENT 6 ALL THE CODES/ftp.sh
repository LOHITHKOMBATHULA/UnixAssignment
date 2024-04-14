#!/bin/bash

if [ "$#" -ne 5 ]; then
    echo "Usage: $0 ftp_server username password local_file remote_directory"
    exit 1
fi

ftp_server="$1"
username="$2"
password="$3"
local_file="$4"
remote_directory="$5"

# Connect to the FTP server and log in
ftp -n "$ftp_server" << END_SCRIPT
quote USER "$username"
quote PASS "$password"

# Change to the remote directory
cd "$remote_directory"

# Upload the local file to the server
put "$local_file"

# Quit FTP session
quit
END_SCRIPT

echo "File $local_file uploaded to $ftp_server:$remote_directory successfully."

