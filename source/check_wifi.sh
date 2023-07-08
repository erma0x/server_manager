#!/bin/bash

# Function to check Wi-Fi connection
check_wifi_connection() {
    if ping -q -c 1 -W 1 8.8.8.8 >/dev/null; then
        echo "Wi-Fi connection active"
        return 0
    else
        echo "Wi-Fi connection unavailable"
        return 1
    fi
}

# Read Wi-Fi SSID and password from file
read -r wifi_ssid wifi_password < wifi.key

# Check Wi-Fi connection
if check_wifi_connection; then
    echo "Already connected to Wi-Fi"
else
    echo "Wi-Fi connection unavailable. Attempting to connect to '$wifi_ssid'..."
    
    # Connect to Wi-Fi network
    sudo nmcli device wifi connect "$wifi_ssid" password "$wifi_password"
    
    if check_wifi_connection; then
        echo "Connected to '$wifi_ssid'"
    else
        echo "Unable to connect to '$wifi_ssid'"
    fi
fi
