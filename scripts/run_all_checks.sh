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
echo "All checks completed."