#!/bin/bash

# Monitor system logs for errors or warnings

LOG_FILE="/var/log/syslog"
PATTERN="error|failed|critical|warn"
OUTPUT_FILE="/tmp/log_monitor_results.txt"

if [[ ! -f $LOG_FILE ]]; then
    echo "Log file $LOG_FILE not found!"
    exit 1
fi 

grep -Ei "$PATTERN" "$LOG_FILE" > "$OUTPUT_FILE"

if [[ -s $OUTPUT_FILE ]]; then
    echo "Potential issues found in $LOG_FILE:"
    cat "$OUTPUT_FILE"
else 
    echo "No issues found in $LOG_FILE."
fi