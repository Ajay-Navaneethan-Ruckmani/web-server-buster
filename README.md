# web-server-buster
A simple script to automate web server attack which runs in the background and outputs the scan results.

The main goal for this script is to automate the process of enumerating and directory busting that is run every time, and instead focus our attention on real pentesting. 

In the real conventional method we need to check for webservers first. And then fire up our tool. But using this buster you can automate the process.

It Runs a full nmap scan in the background checks for webserver ports and if any webserver port is open, a Nikto scan is ran on the background and a directory buster is run in the foreground and all the scan results are appeneded to a .txt file too.


## Features

1. **Nmap** : Finds common webserver ports
2. **Nikto**    : Runs a nikto scan in the background and outputs the file
3. **Gobuster**  : Runs gobuster for directory busting

## Requirements:
[nmap](https://github.com/nmap/nmap), which we can install with:
```bash
sudo apt update
sudo apt install nmap -y
```
[nmap](https://github.com/nmap/nmap), which we can install with:
```bash
sudo apt update
sudo apt install nmap -y
```

[Gobuster](https://github.com/OJ/gobuster) '*v3.0 or higher*', which we can install with:  
```bash
sudo apt update
sudo apt install gobuster -y
```
Most of these should be installed by default in [Parrot OS](https://www.parrotsec.org) and [Kali Linux](https://www.kali.org).  

## Installation:
```bash
git clone https://github.com/ajay-navaneethan/web-server-buster.git
```


## Usage:
```
./buster.sh <ip>
Usage: buster.sh <TARGET-IP> 
```
**Example scans**:
```
./buster.sh 192.168.1.1
```

**Feel free to send your pull requests :)**  
