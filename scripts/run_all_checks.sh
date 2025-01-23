#!/bin/bash

echo "Running all Linux automation scripts..."
echo "======================================="

echo
echo "1. Running system_info.sh..."
./system_info.sh

echo
echo "2. Running check_file_permissions.sh..."
./check_file_permissions.sh

echo 
echo "3. Run monitor_logs.sh..."
./monitor_logs.sh

echo
echo "4. Run check_disk_usage.sh..."
./check_disk_usage.sh

echo
echo "All checks completed."