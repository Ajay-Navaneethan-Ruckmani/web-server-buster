#!/bin/bash
if [ "$1" == "" ]
then
echo "You forgot an IP address!"
echo "Syntax: ./file.sh <ip>"

else
 for ports in 80 443; do
   nmap -p $ports -T5 $1 
   echo "Completed successfully"
   echo "-------------------------------------------------------------------------------------------------------------------------"
  done
fi


#map -p 80 -T5 18.192.172.30 | grep tcp | cut -d " " -f 2

