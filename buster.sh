#!/bin/bash

RED="\e[31m"
ORANGE="\e[33m"
BLUE="\e[94m"
GREEN="\e[92m"
STOP="\e[0m"
WHITE="\e[37m"
YELLOW = "\e[33m"

if [ "$1" == "" ]
then
    printf "${WHITE}"
    echo "You forgot an IP address!"
    echo "Syntax: ./file.sh <ip>"

else
    printf "${GREEN}"
    figlet -c -f slant "buster"
   printf "${BLUE}"
   echo "v1.0"
   echo "by ajay"
   echo "-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
   printf "${ORANGE}" 
    echo "Starting NMAP full scan on background"
    nmap -A -O -sV -sC $1 > nmap-full-scan.txt &
    printf "${WHITE}"
    for ports in 80 8080; do  #add ports that you want to enumerate here with a space
	echo 
        nmap -p $ports -T5 $1 | grep open > status
        if [ -s status ]
        then
	   printf "${GREEN}"
           echo "Web server found !!!"
	   echo
	   printf "${ORANGE}"
	   echo "Initialising NIKTO scan on background......"
	   echo
           echo "Starting Gobuster +++++++++++++++++++++++++++++++++++++++++++++++"
	   printf "${WHITE}"
	   nikto -h $1 -p $ports > nikto-$ports.txt &
	   gobuster dir -u http://$1:$ports -w /usr/share/wordlists/dirb/common.txt -o gobuster-$ports.txt &
	else
	   echo "Web server not found on $PORT"
	fi
    done
fi


