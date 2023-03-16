#!/bin/bash

# program to check the user is admin or not

if [[ ${EUID} == 0 ]] ; then
echo "You are root ! "
echo "Don't run as the root "
exit
else
echo " No Root ! "
echo "Good don't run program as root, without knowing what it going to do."
fi
