#!/bin/bash

processes=$(ps -A | wc -l)

echo "The total number of processes running on $HOSTNAME is : " "$processes"
