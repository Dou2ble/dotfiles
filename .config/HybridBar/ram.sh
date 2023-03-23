#!/bin/sh

# grab the second line of the ouput produced by the command: free -g (displays output in Gb)
secondLine=$(free -g | sed -n '2p')

#split the string in secondLine into an array
read -ra ADDR <<< "$secondLine"

#get the total RAM from array
totalRam="${ADDR[1]}"

#get the used RAM from array
usedRam="${ADDR[2]}"

# calculate and display the percentage
pct="$(($usedRam*100/$totalRam))"
echo "$pct%"
