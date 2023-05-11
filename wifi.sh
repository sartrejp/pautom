#!/bin/bash

# List available Wi-Fi networks
echo "Available Wi-Fi networks:"
nmcli device wifi list

# Prompt user to select a network
read -p "Enter the name of the network you want to connect to: " network

# Prompt user to enter network password
read -p "Enter the password for $network: " password
echo

# Connect to the selected network
nmcli device wifi connect $network password $password
