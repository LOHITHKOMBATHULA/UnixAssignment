#!/bin/bash

# Check if terminal supports colors
if tput colors > /dev/null 2>&1; then
    # Set colors
    bold=$(tput bold)
    normal=$(tput sgr0)
    red=$(tput setaf 1)
    green=$(tput setaf 2)
    yellow=$(tput setaf 3)
    blue=$(tput setaf 4)
else
    bold=""
    normal=""
    red=""
    green=""
    yellow=""
    blue=""
fi

# Example usage of tput for formatting text
echo "${bold}Bold Text${normal}"
echo "${red}Red Text${normal}"
echo "${green}Green Text${normal}"
echo "${yellow}Yellow Text${normal}"
echo "${blue}Blue Text${normal}"
