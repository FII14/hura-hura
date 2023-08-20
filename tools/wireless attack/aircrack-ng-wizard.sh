#!/bin/bash
# aircrack-ng wizard

read -p "Enter the network interface you want to use: " network_interface
read -p "Enter the bssid you want to attack: " bssid
read -p "Enter the path to the capture file: " capture_file
read -p "Enter the path to the wordlist file: " wordlist_file

aircrack-ng -w "$wordlist_file" --bssid "$bssid" "$capture_file"
