#!/bin/bash
if ["$1" == ""]
then 
echo "You forgot an IP address!"
echo "Syntax: ./file.sh <ip>"

else
nmap -p 80 -T5 $1
echo "Completed successfully"
fi
