#!/bin/bash

echo "Security Check: World-Writable Files"
echo "====================================="

find / -xdev -type f -perm -002 -ls 2>/dev/null | while read -r file; do
    echo "Warning: $file is world-writable!"
done
