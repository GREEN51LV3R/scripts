#!/bin/bash

# Information about
# Memory usage
# CPU load
# Number of TCP connections
# Kernel version
echo "----------------------------------------------------------------------------"
#hostname
echo "The host name is : "
server_name=$(hostname)
echo "${server_name}"
echo "----------------------------------------------------------------------------"
#memory usage
function memory_check() {
echo ""
echo "Memory used by the ${server_name} is : "
free -h
echo ""
}
# CPU load check
function cpu_check() {
echo ""
echo "CPU load on ${server_name} is : "
uptime
echo ""
}
# TCP connection check
function tcp_check() {
echo "TCP connection on ${server_name} is : "
cat /proc/net/tcp | wc -l
echo ""
}
#Kernel version check
function kernel_check() {
echo ""
echo "Kernel version on ${server_name} is : "
uname -r
echo ""
}
# call all function
function all_check() {

memory_check

cpu_check

tcp_check

kernel_check

}

all_check

echo "----------------------------------------------------------------------------"
echo ""
echo "Program End"
echo ""
echo "----------------------------------------------------------------------------"
