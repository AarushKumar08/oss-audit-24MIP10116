#!/bin/bash
# Concepts: for loop, df, ls -ld, awk
DIRS="/etc /home /var/log"

echo -e "DIR\tUSAGE\tOWNER\tPERMS"
for d in $DIRS; do
    if [ -d "$d" ]; then
        USAGE=$(df -h "$d" | awk 'NR==2 {print $3}')
        OWNER=$(ls -ld "$d" | awk '{print $3}')
        PERMS=$(ls -ld "$d" | awk '{print $1}')
        echo -e "$d\t$USAGE\t$OWNER\t$PERMS"
    fi
done
