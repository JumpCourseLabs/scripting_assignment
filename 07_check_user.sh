#!/bin/bash

echo
echo
echo "Enter a username"
read username

exists=$(grep -c "^$username:" /etc/passwd)

if [ $exists -eq 0 ]; then
  echo "The user $username does not exist"
else
  echo "The user $username exists"
fi
