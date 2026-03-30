#!/bin/bash
# Concepts: while read, if-then, counter, $1 (arguments)
LOG_FILE=$1
KEYWORD=$2
COUNT=0

if [[ -f "$LOG_FILE" ]]; then
    while read -r line; do
        if [[ "$line" == *"$KEYWORD"* ]]; then
            ((COUNT++))
        fi
    done < "$LOG_FILE"
    echo "Found '$KEYWORD' $COUNT times in $LOG_FILE."
else
    echo "File not found."
fi
