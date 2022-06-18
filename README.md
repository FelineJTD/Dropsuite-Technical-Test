# Dropsuite Technical Test
_Author: Felicia Sutandijo_

## Overview
This repository contains an `src` folder containing a Ruby source code (`main.rb`) and a `test` folder containing the default example folder. The purpose of the code is to check for duplicate files and return the content of the duplicate files with the largest number of occurences and the number of occurences.

## Usage
1. Install Ruby
2. Change directory to `src`
3. Run main.rb with the path to the directory you want to check as an argument using the following command:
```
ruby main.rb <path/to/directory>
```

## How It Works
The program scans the directory for files, each file will be compared to previous files (recorded in a hash table), and if a match is found, it is added to the number of occurences of the same file and the program stops the comparison and continues to the next file, otherwise if a match is not found, the file is considered a 'new' kind of file and registered to the hash table.

## Usage of Multi-Threading
Multi-Threading may also be implemented to speed things up, but I did not implement it since I am not yet familiar with Ruby's multi-threading.
