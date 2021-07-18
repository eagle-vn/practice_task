#!/bin/bash

OUTPUT=$(cat "$1" | tr '\n' ' ' | sed 's/[^a-z]/,/g' | sed 's/,\{2,\}/,/g')
OUTPUT=${OUTPUT::-1}
echo $OUTPUT
echo "This script was runned by user $USER"
