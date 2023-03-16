#!/bin/bash

# program to create a file and give permission to the file
echo "--------------------------------------------------"
echo "NOTE : PLEASE USE ( .sh ) TO THE FILE NAME AND TO STOP THE PROGRAM USE CTRL + C"
echo "--------------------------------------------------"
read -p "ENTER FILE NAME : " name

echo "FILE SAVE WITH THE NAME : ${name}"
echo "DATE:"
date
echo "DIRECTORY : "
pwd

sudo touch ${name}
sudo chmod +x ${name}
echo "--------------------------------------------------"
echo "FILE AND PERMISSION COMPLETE "
echo "--------------------------------------------------"
echo "PROGRAM END"
