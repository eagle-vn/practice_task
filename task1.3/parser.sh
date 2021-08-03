#!/bin/bash

#OUTPUT=$(cat "$1" | tr '\n' ' ' | sed 's/[^a-z]/,/g' | sed 's/,\{2,\}/,/g')
OUTPUT=$(cat "$1" | tr '\n' ' ' | sed -e 's/[^a-z]/,/g' -e 's/,\{2,\}/,/g' -e 's/,$//g')

echo $OUTPUT
echo "This script was runned by user $USER"
