#!/bin/bash

echo "System Information Report"
echo "========================="
echo "Hostname: $(hostname)"
echo "Uptime: $(uptime -p)"
echo "Current Users: $(who | wc -l)"
echo "Memory Usage: $(free -h | grep Mem | awk '{print $3 "/" $2}')"
echo "Disk Usage: $(df -h / | awk 'NR==2 {print $3 "/" $2}')"
