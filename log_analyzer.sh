#!/bin/bash
# Script 4 — Log File Analyzer
# Usage: ./log_analyzer.sh /var/log/mysql/error.log ERROR

LOG_FILE=$1
KEYWORD=$2
COUNT=0

if [[ -f "$LOG_FILE" ]]; then
    echo "Scanning $LOG_FILE for '$KEYWORD' entries..."
    
    # Read the file line by line (Unit 5 concept)
    while read -r line; do
        # If-then to check for the keyword
        if [[ "$line" == *"$KEYWORD"* ]]; then
            ((COUNT++)) # Increment counter variable
        fi
    done < "$LOG_FILE"

    echo "--- ANALYSIS SUMMARY ---"
    echo "Total $KEYWORD entries found: $COUNT"
else
    echo "Error: Log file not found at $LOG_FILE."
fi
