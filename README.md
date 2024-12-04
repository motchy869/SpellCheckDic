# SpellCheckDic

word dictionary for various spell checkers

## 1. directory structure

- /
  - dicts/: stores text files for specific subjects
  - compile.sh: merge all text files in dicts/ into dict.txt
  - dict.txt: merged dictionary

## 2. How to add words

1. Add words to text files in dicts/, or create a new text file if necessary.
2. Run `./compile.sh` to merge all text files in dicts/ into dict.txt
