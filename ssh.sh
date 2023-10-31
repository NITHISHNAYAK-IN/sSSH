#!/bin/bash
echo "-----------------"
echo -e "\e[1;31m //WELCOME TO sSSH \e[0m"
echo -e "\e[1;34m Made with <3 by NITHISH NAYAK \e[0m"
echo "-----------------"
echo -e "\e[1;32m [!] Select the option \e[0m"
echo "1. Start a ssh server"
echo "2. Connect to a ssh server"
echo  "Enter 1 or 2"
read option
if [ $option == 1 ]
then 
echo -e "\e[1;33m You selected 1 \e[0m"
echo -e "\e[1;33m start ssh a server \e[0m"
echo "--------------------------------"
me="$(whoami)"
echo "Enter your ip address[ifconfig / ip addr]"
echo "Example : 192.168.43.1"
read ip
echo "do you want to set password (y/n)"
read option2
if [ $option2 == y ]
then
passwd
sshd
echo "__________________________________________"
echo "use the following command to login into the ssh server"
echo "ssh $me@$ip -p8022"
logcat -s 'ssh:*'
elif [ $option2 == n ]
then
sshd
echo "__________________________________________"
echo "use the following command to login into the ssh server"
echo "ssh $me@$ip -p8022" 
logcat -s 'ssh:*'
else
echo "Enter valid input"
fi
elif [ $option == 2 ]
then
echo  -e "\e[1;35m You selected 2 \e[0m"
echo  -e "\e[1;35m connect to a ssh server \e[0m"
echo "----------------------------------"
echo "Enter hostname/ip"
read hostname
echo "Enter username"
read username
echo "__________________________________________"
ssh $username@$hostname -p8022
else
echo "Enter valid option" 
fi 
