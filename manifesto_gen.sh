#!/bin/bash
# Script 5 — The Open Source Manifesto Generator (MySQL/GPL Focus)

echo "--- MySQL Open Source Manifesto Generator ---"

# 1. Ask the user three questions interactively (Unit 5 concept)
read -p "1. Enter your name: " USER_NAME
read -p "2. What is your favorite FOSS value (e.g. Dual-Licensing)? " VALUE
read -p "3. Why do you choose GPL v2? " REASON

# 2. Compose the paragraph with string concatenation
TIMESTAMP=$(date)
MANIFESTO="MYSQL OPEN SOURCE MANIFESTO
Created by: $USER_NAME on $TIMESTAMP

The dual-model story of MySQL tells us that $VALUE is key 
to software success. I believe in the GPL v2 license 
because $REASON. I commit to keeping data free and accessible."

# 3. Save to a .txt file using redirection (>) (Unit 5 concept)
echo "$MANIFESTO" > mysql_manifesto.txt

echo "--------------------------------"
echo "Your personalized manifesto has been saved to 'mysql_manifesto.txt'."
