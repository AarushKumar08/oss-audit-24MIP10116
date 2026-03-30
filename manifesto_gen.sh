#!/bin/bash
# Concepts: read, concatenation, date, > redirection
read -p "Name: " NAME
read -p "Value: " VAL
read -p "Hobby: " HOB

DATE=$(date)
TEXT="Manifesto by $NAME ($DATE): I value $VAL and contribute via $HOB."

echo "$TEXT" > manifesto.txt
echo "Manifesto saved to manifesto.txt"
