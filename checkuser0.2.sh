#!/bin/bash

# script demo

# hostname
host_name=$(hostname)
echo ""
# disk use 
function disk_use() {
echo "The disk use of ${host_name} is : "
free -h # disk used in system
echo ""
}

# CPU usage
function cpu_usge() {
echo "The CPU usage of ${host_name} is : "
uptime 
echo ""
}

# TCP connection 
function tcp_check() {
echo "Number of TCP connection on ${host_name} is : "
echo "here we are displying only how may connection (in number)"
cat proc/net.tcp | wc -l 
echo ""
}

#kernel version 
function kernel_version() {
echo "The kernel version of the ${host_name} is :"
uname -r
echo ""
}

# all calls together 

function all_check() {
echo "System Information"
echo "-----------------------------------------------------------------------------------------"
echo "The host is ${host_name}"
disk_use
cpu_usge
tcp_check
kernel_version 
echo "-----------------------------------------------------------------------------------------"
echo "End Program"
}

# color variablea

green='\e[32m'
blue='\e[34m'
clear='\e[0m'

# color functions
ColorGreen() {
echo -ne $green$1$clear
} 
colorBlue() {
echo -ne $blue$1$clear
}

menu() {
echo -ne "
Menu
$(ColorGreen '1)') Memory usage
$(ColorGreen '2)') CPU load
$(ColorGreen '3)') Number of TCP connections
$(ColorGreen '4)') Kernel version
$(ColorGreen '5)') check all
$(ColorGreen '0)') exit
$(ColorGreen 'Choose an Option: ')"
read -p "Enter Here : " a
case $a in 
1) disk_use ; menu ;;
2) cpu_usge ; menu ;;
3) tcp_check ; menu ;;
4) kernel_version ; menu ;;
5) all_check ; menu ;;
0) exit 0 ;;
*) echo -e $red "Wrong Option You Selected" $clear; 
wrong command ;;

esac
}


# calling menu function 
menu

}

