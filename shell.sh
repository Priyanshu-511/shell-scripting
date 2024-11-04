#!/bin/bash

# Check if the argument file exists or not
if [ "$#" -ne 1 ]; then
    echo "Usage: ./getEmails.sh <file>"
    exit 1
fi

INPUT_FILE=$1

# Check if the input file exists or not
if [ ! -f $INPUT_FILE ]; then
    echo "Input file doesn't exists"
    exit 1
fi

# Extract emails and store in emails.txt
grep -oE "[a-zA-Z0-9._%+-]+@[a-zA-Z.]+\.iitb\.ac\.in" $INPUT_FILE > emails.txt

# Sort emails based on descending order with case-insensitivity
sort -f -t@ -k2,2r emails.txt > sortedEmails.txt

# Extract cse dept emails and store the results in cseEmails.txt
grep -oE "[a-zA-Z0-9._%+-]+@cse.iitb.ac.in" sortedEmails.txt > cseEmails.txt