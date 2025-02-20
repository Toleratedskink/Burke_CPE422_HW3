#!/bin/bash
#This script configures the BeagleBone Black by setting the
# CPU frequency, displaying CPU information, defining and echoing
# variables, and modifying the PATH. It takes no command line arguments.
# Example invocation: ./mySetup.sh a. Set the CPU frequency to 600 MHz
echo 600000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
echo"CPU frequency set to 600 MHz"
# b. Display CPU information
cpufreq-info
# c. Create a variable named location and assign the value /home/debian
location="/home/debian"
# d. Echo the value of the variable location
echo "Location: $location"
# e. Create a variable named items to get the number of items in the
# current directory
items=$(ls -1 | wc -l)
echo "Number of items in the current directory: $items"
# 2. Modify the environment variable PATH so the script can be executed
# from any directory
export PATH="$PATH:$(pwd)"
echo "$PATH" > newPathValue.txt
echo "Updated PATH value saved to newPathValue.txt"
# 3. Set execute permissions on the script
chmod +x "$0"
echo "Execute permissions set on script"
