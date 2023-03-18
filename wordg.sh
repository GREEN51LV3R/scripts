#!/bin/bash

# script to generate a random password

echo "------------------------------------------------------------------------------------------------------------"
read -p "PASSWORD LENGTH : " length
echo "------------------------------------------------------------------------------------------------------------"
read -p "SUGGESTION : " word
echo "------------------------------------------------------------------------------------------------------------"
read -p "GENERATE HOW MANY ? " number
echo "------------------------------------------------------------------------------------------------------------"
echo "------------------------------------------------------------------------------------------------------------"
for i in `seq 1 $number`; do (tr -cd ${word} </dev/urandom | fold -w${length} | head -n 1 ); done
echo "------------------------------------------------------------------------------------------------------------"
echo "------------------------------------------------------------------------------------------------------------"
printf "Program End "