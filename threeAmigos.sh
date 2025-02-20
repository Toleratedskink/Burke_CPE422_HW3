#!/bin/bash 
#This script takes four command-line arguments, sums the 
# first three, and then calls subtractMachine.sh using the sum as the 
# first argument and the fourth argument as the second argument.
#
# Command-line arguments: $1 - First number $2 - Second number $3 - 
# Third number $4 - Fourth number (used for subtraction)
#
# Example invocation: ./threeAmigos.sh 5 5 5 4 Output: Sum = 15 15 is 
# larger than 4 Difference = 11 Count Down = 11 Count Down = 10 ... 
# Count Down = 1 Ensure exactly four arguments are provided
if [ "$#" -ne 4 ]; then 
    echo "Usage: $0 <num1> <num2> <num3> <num4>" 
    exit 1
fi
# Assign arguments to variables
num1=$1 
num2=$2 
num3=$3 
num4=$4
# Calculate the sum of the first three numbers
sum=$((num1 + num2 + num3)) 
echo "Sum = $sum"
# Execute subtractMachine.sh with the calculated sum and fourth argument
./subtractMachine.sh "$sum" "$num4"
