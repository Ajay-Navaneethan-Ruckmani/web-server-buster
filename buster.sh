#!/bin/bash
if [ "$1" == "" ]
then
    echo "You forgot an IP address!"
    echo "Syntax: ./file.sh <ip>"

else
    figlet -c -f slant "buster"
    for ports in 80 443; do
        echo $ports
        nmap -p $ports -T5 $1 | grep open > status
        if [ -s status ]
        then
           echo "file is not empty"
           echo "starting gobuster"
	   echo "starting nikto"
	   nikto -h $1 -p $ports > nikto-$ports.txt &
	else
	   echo "file is empty"
	fi
        echo "----------------------------------------------------------------------------------------"
    done
# nikto -h $1 -p $ports > nikto-scan.txt &
fi


#map -p 80 -T5 18.192.172.30 | grep tcp | cut -d " " -f 2

