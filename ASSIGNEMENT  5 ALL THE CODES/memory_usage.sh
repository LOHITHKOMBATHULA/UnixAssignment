#!/bin/bash

# List of machines
machines=("machine1" "machine2" "machine3")  # Add your machines here

# SSH username
username="your_username"

# Function to retrieve memory usage
get_memory_usage() {
    ssh "$username"@"$1" 'free -m'
}

# Function to retrieve CPU usage
get_cpu_usage() {
    ssh "$username"@"$1" 'top -bn1 | grep "Cpu(s)"'
}

# Main function to display memory and CPU usage for each machine
main() {
    echo "Memory Usage:"
    echo "-------------"
    for machine in "${machines[@]}"; do
        echo "Machine: $machine"
        get_memory_usage "$machine"
        echo ""
    done

    echo "CPU Usage:"
    echo "---------"
    for machine in "${machines[@]}"; do
        echo "Machine: $machine"
        get_cpu_usage "$machine"
        echo ""
    done
}

# Execute main function
main
