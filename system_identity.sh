#!/bin/bash
# Script 1 — System Identity Provider

# 1. Capture system info into variables
USER_NAME=$(whoami)
SHELL_PATH=$SHELL
OS_TYPE=$(uname -o)

echo "--- SYSTEM IDENTITY REPORT ---"
echo "Current User: $USER_NAME"
echo "Current Shell: $SHELL_PATH"
echo "Operating System: $OS_TYPE"

# 2. If-then-else logic to check for root privileges
if [ "$USER_NAME" == "root" ]; then
    echo "Access Level: Administrative (Root)"
else
    echo "Access Level: Standard User"
fi
