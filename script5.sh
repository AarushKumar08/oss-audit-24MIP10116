#!/bin/bash
# Script 5: Open Source Manifesto

read -p "Tool you use: " GIT
read -p "Freedom means: " the ability to use, modify, and share software without restrictions.
read -p "What will you build: " I will build software that is open, useful, and accessible to everyone.

FILE="manifesto.txt"

echo "Open Source Manifesto" > $FILE
echo "I use $TOOL daily." >> $FILE
echo "Freedom means $FREEDOM." >> $FILE
echo "I will build $BUILD and share it." >> $FILE

echo "Saved in $FILE"
