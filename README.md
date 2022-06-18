# Dropsuite Technical Test
_Author: Felicia Sutandijo_

## Overview
This repository contains an `src` folder containing a Ruby source code (`main.rb`) and a `test` folder containing the default example folder. The purpose of the code is to check for duplicate files and return the content of the duplicate files with the largest number of occurences and the number of occurences.

## Problem Statement
So I want you to build a PHP/Ruby/Java script/others, means it's a PHP/Ruby/Java application without any frameworks, but you can use other stacks like databases if necessary. The application is to count on how many files inside a path with the SAME content. It could have the same name or not.  
Attached is the example folder*. In this case if I pass the folder's path, the script will return me the number of files that have same content. On those folders content1 = content2 = content3, So the application will return content + number. So in this case is: abcdef 4  
Also you need to return the bigger number of files if there are multiple files with the same content. For example if there are 4 files with content “abcdef” and 5 files with content “abcd” then the return value should be: abcd 5  
Please take note that the example files are in bytes level, but the code need to be able to handle big files as well. Think of Megabytes, Gigabytes level. And the application need to be able to handle tens / hundreds / thousands / millions of files.  
The other requirement is I want this app to scan a path DYNAMICALLY. Means I should be able to scan any folder that I like, without changing anything on the code. It could be a parameter or a config file.  

_*the example folder is included in this repository in the `test` folder_

## Usage
1. Install Ruby
2. Change directory to `src`
3. Run main.rb with the path to the directory you want to check as an argument using the following command:
```
ruby main.rb <path/to/directory>
```

## How It Works
The program scans the directory for files, each file will be compared to previous files (recorded in a hash table), and if a match is found, it is added to the number of occurences of the same file and the program stops the comparison and continues to the next file, otherwise if a match is not found, the file is considered a 'new' kind of file and registered to the hash table.