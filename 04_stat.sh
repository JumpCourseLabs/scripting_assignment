#!/bin/bash
# Takes a file input as an argument, and performs a `stat` on the file
echo
echo
echo "*************************"
echo "The status of $1 is:"
echo
echo
stat $1
echo "*************************"
