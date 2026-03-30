#!/bin/bash
# Script 1 — System Identity Provider

# 1. Capture system info into variables
USER_NAME=$(whoami)
OS_TYPE=$(uname -o)

echo "--- SYSTEM IDENTITY REPORT ---"
echo "Current User: $USER_NAME"
echo "Operating System: $OS_TYPE"

# 2. Check for administrative privileges (Unit 2 concept)
if [ "$USER_NAME" == "root" ]; then
    echo "Privilege Level: Administrative (Full Database Access)"
else
    echo "Privilege Level: Standard User (Limited MySQL Access)"
fi
