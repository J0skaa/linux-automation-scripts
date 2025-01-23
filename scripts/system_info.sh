#!/bin/bash

echo "System Information Report"
echo "========================="
echo "Hostname: $(hostname)"
echo "Uptime: $(uptime -p)"
echo "Current Users: $(who | wc -l)"
echo "Memory Usage: $(free -h | grep Mem | awk '{print $3 "/" $2}')"
echo "Disk Usage: $(df -h / | awk 'NR==2 {print $3 "/" $2}')"


echo "Security Check: Users with Default Passwords"
echo "==========================================="


awk -F: '($2 == "" || $2 == "*") {print $1}' /etc/shadow | while read -r user; do
    echo "Warning: $user has a default or no password set!"
done
