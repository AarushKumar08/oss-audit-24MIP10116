#!/bin/bash
# Script 2 — FOSS Package Inspector

# Using MySQL as the chosen software
PACKAGE="mysql-server"

echo "Checking status for: $PACKAGE..."
echo "--------------------------------"

# 1. Check if the software is installed on the system
if dpkg -l | grep -q "^ii  $PACKAGE "; then
    
    # 2. Find version using pipe with grep and awk
    VERSION=$(dpkg -l | grep "$PACKAGE" | awk '{print $3}')
    echo "Status: INSTALLED"
    echo "Version: $VERSION"

    # 3. Case statement to describe purpose and license (Unit 2 concept)
    case $PACKAGE in
        "mysql-server")
            echo "Purpose: Relational Database Management System (RDBMS)."
            echo "License: GPL v2 / Commercial (The Dual-Model Story)."
            ;;
        *)
            echo "Purpose: General Open Source Software."
            ;;
    esac
else
    echo "Status: NOT INSTALLED"
    echo "Note: MySQL is a dual-licensed database with a GPL v2 foundation."
fi
