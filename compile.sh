#!/usr/bin/env bash

# This script searches all .txt files in "dicts" directory and concatenates them into one file "dict.txt"
# To avoid unintended word concatenation, a line break is added at the end of each file.

files=$(find ./dicts -name "*.txt")

echo "" > dict.txt
for file in $files; do
    cat $file >> dict.txt
    echo "" >> dict.txt
done

# Remove empty lines from dict.txt
sed -i '/^$/d' dict.txt
