#!/bin/bash
# Script 3 — Disk and Permission Auditor

# Auditing directories where MySQL stores its data and logs
DIRS="/var/lib/mysql /var/log/mysql /etc/mysql"

echo -e "DIRECTORY\tUSAGE\tOWNER\tPERMISSIONS"
echo "--------------------------------------------------------"

# For loop to iterate through the list (Unit 2 concept)
for d in $DIRS; do
    if [ -d "$d" ]; then
        # Use df for space and ls for metadata; awk to extract fields
        USAGE=$(df -h "$d" | awk 'NR==2 {print $3}')
        OWNER=$(ls -ld "$d" | awk '{print $3}')
        PERMS=$(ls -ld "$d" | awk '{print $1}')
        
        echo -e "$d\t$USAGE\t$OWNER\t$PERMS"
    else
        echo -e "$d\t[NOT FOUND - Database might not be installed]"
    fi
done
