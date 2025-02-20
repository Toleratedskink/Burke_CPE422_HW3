#!/bin/bash 
#This script takes two command-line arguments, subtracts the 
# smaller number from the larger, prints the difference, and then counts 
# down from the difference to 1.
#
# Command-line arguments: $1 - First number $2 - Second number
#
# Example invocation: ./subtractMachine.sh 3 8 Output: 8 is larger than 
# 3 Difference = 5 Count Down = 5 Count Down = 4 Count Down = 3 Count 
# Down = 2 Count Down = 1 Ensure exactly two arguments are provided
if [ "$#" -ne 2 ]; then 
   echo "Usage: $0 <num1> <num2>" 
   exit 1 
fi
# Assign arguments to variables
num1=$1 
num2=$2
# Ensure numbers are not equal
if [ "$num1" -eq "$num2" ]; then 
echo "Error: The numbers cannot be equal." 
exit 1
fi
# Determine the larger and smaller numbers
if [ "$num1" -gt "$num2" ]; then 
    larger=$num1 
    smaller=$num2 
else 
    larger=$num2 
    smaller=$num1
fi 
difference=$((larger - smaller)) 
echo "$larger is larger than $smaller" 
echo "Difference = $difference"
# Countdown from the difference to 1
for ((i=difference; i>0; i--)); do 
    echo "Count Down = $i" 
done
exit 0
