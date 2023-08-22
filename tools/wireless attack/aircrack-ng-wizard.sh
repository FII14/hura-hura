#!/bin/bash
######################
# aircrack-ng wizard #
# by : fii14         #
######################

read -p "Enter the network interface you want to use: " network_interface
read -p "Enter the bssid you want to attack: " bssid
read -p "Enter the path to the capture file: " capture_file

if [[ ! -f "$capture_file" ]]; then
    echo "Error: $capture_file file not found."
    exit 1
fi

if [[ -f "$capture_file" && "$capture_file" != *.cap ]]; then
    echo "Error: $capture_file is not a capture file."
    exit 1
fi
    
read -p "Enter the path to the wordlist file: " wordlist_file

aircrack-ng -w "$wordlist_file" --bssid "$bssid" "$capture_file"
