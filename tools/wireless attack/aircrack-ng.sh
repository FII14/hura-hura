#!/bin/bash

echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo "@ aircrack-ng is an 802.11a/b/g WEP/WPA cracking program that can recover a 40-bit, 104-bit, @"
echo "@ 256-bit or 512-bit WEP key once enough encrypted packets have been gathered. Also it can   @"
echo "@ attack WPA1/2 networks with some advanced methods or simply by brute force.                @"
echo "@                                                                                            @"
echo "@ It implements the standard FMS attack along with some optimizations, thus making the       @"
echo "@ attack much faster compared to other WEP cracking tools. It can also fully use a           @"
echo "@ multiprocessor system to its full power in order to speed up the cracking process.         @"
echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo ""

read -p "Enter the network interface you want to use: " network_interface
read -p "Enter the bssid you want to attack: " bssid
read -p "Enter the path to the capture file: " capture_file
read -p "Enter the path to the wordlist file: " wordlist_file

aircrack-ng -w "$wordlist_file" --bssid "$bssid" "$capture_file"
