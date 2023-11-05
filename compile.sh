#!/usr/bin/env bash

# This script searches all .txt files in "dicts" directory and concatenates them into one file "dict.txt"

echo -n "" > dict.txt

files=$(find ./dicts -name "*.txt")

for file in $files; do
    cat $file >> dict.txt
done
