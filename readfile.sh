#!/bin/bash

# program to read the file if it's not present then create file
token="yes"

echo "Enter filename"
read filename

read -p "Do you want to create a file if the file is not found ? ( yes / no )" token_user

if [ -e $filename ]
then
echo "$filename is exits on the directory"
cat $filename

else
if [ $token_user == $token ]
then
echo "Start writting we are inside the file"
echo ""
echo ":"
    cat > $filename
    echo "File created"

else
echo "Thank you"
fi
fi
