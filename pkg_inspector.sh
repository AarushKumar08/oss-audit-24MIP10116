#!/bin/bash
# Concepts: command -v, dpkg, grep, case statement
PKG="curl" 

if command -v $PKG > /dev/null 2>&1; then
    VERSION=$(dpkg -l | grep " $PKG " | awk '{print $3}')
    echo "Package $PKG is installed. Version: $VERSION"
    case $PKG in
        "curl") echo "Purpose: Data transfer tool." ;;
        "git")  echo "Purpose: Version control." ;;
        *)      echo "Purpose: General FOSS tool." ;;
    esac
else
    echo "$PKG is not installed."
fi
