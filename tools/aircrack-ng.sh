#!/bin/bash

# aircrack-ng
#----------------------------------------------------------------#
# aircrack-ng is a suite of wireless network security            #
# tools that is used for auditing the security of Wi-Fi          #
# networks. It's primarily used to assess the security           #
# of wireless networks by testing their vulnerabilities          #
# and evaluating their encryption methods. The suite             #
# includes several tools that allow you to capture and           #
# analyze network traffic, perform various attacks on            #
# wireless networks, and crack WEP and WPA/WPA2 encryption       #
# keys.                                                          #
# ---------------------------------------------------------------#

read -p "Enter the network interface you want to use: " network_interface
read -p "Enter the bssid you want to attack: " bssid
read -p "Enter the path to the capture file: " capture_file
read -p "Enter the path to the wordlist file: " wordlist_file

aircrack-ng -w "$wordlist_file" --bssid "$bssid" "$capture_file"
