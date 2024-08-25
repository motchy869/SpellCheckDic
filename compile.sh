#!/usr/bin/env bash

# This script searches all .txt files in "dicts" directory and concatenates them into one file "dict.txt"
# To avoid unintended word concatenation, a line break is added at the end of each file.

set -u

files=$(find ./dicts -name "*.txt")

echo "" > dict.txt
for file in $files; do
    cat "$file" >> dict.txt
    echo "" >> dict.txt
done

# Remove comment lines beginning with # and empty lines from dict.txt
sed -i '/^#/d; /^$/d' dict.txt

# Sort dict.txt
sort -o dict.txt dict.txt
