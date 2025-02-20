#!/bin/bash 
# This script performs basic administrative tasks: 
# 1. Creates directories and a file based on user input. 
# 2. Writes a message to a file and moves it. 
# 3. Creates a symbolic link. 
# 
# Command-line arguments: 
# $1 - Name of the first directory 
# $2 - Name of the second directory (inside the first one) 
# $3 - Name of the text file 
# $4 - Name of the symbolic link 
# 
# Example invocation: 
# ./simpleAdmin.sh dir1 dir2 message.txt linkName 
# Check if exactly 4 arguments are provided 
if [ "$#" -ne 4 ]; then 
echo "Usage: $0 <dir1> <dir2> <file> <linkName>" 
exit 1 
fi 
# Assign arguments to variables 
dir1=$1 
dir2=$2 
file=$3 
linkName=$4 
# Create the first directory 
mkdir -p "$dir1" 
echo "Creating a directory named $dir1 .......... done!" 
# Create the second directory inside the first 
dir2_path="$dir1/$dir2" 
mkdir -p "$dir2_path" 
echo "Creating a directory named $dir2 under $dir1 .......... done!" 
# Create the text file and write "Hello World!" to it 
echo "Hello World!" > "$file" 
echo "Creating a text file named $file .......... done!" 
# Move the text file to the second directory 
mv "$file" "$dir2_path/" 
echo "Moving $file to $dir2_path .......... done!" 
# Create a symbolic link to the second directory 
ln -s "$dir2_path" "$linkName" 
echo "Creating a link from working directory to $dir2 .......... done!" 
exit 0
