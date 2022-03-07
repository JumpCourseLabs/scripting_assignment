#!/bin/bash

declare -a array

echo "Enter the X Value : "
read x
echo "Enter the Y Value : "
read y

for ((i = 0; i < x; i++)); do
  for ((j = 0; j < y; j++)); do
    a[${i}, ${j}]="*"
  done
done

for ((i = 0; i < x; i++)); do
  for ((j = 0; j < y; j++)); do
    echo -ne "${a[${i}, ${j}]}"
  done
  echo
done
