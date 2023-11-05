#!/usr/bin/env bash

# This script searches all .txt files in "dicts" directory and concatenates them into one file "dict.txt"

files=$(find ./dicts -name "*.txt")
cat $files > dict.txt
