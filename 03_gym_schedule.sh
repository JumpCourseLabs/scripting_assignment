#!/usr/bin/env bash

clear
exit=n

while [ "$exit" = n ]; do
  echo "****** Daily Workout ******"
  echo "1: Monday"
  echo "2: Tuesday"
  echo "3: Wednesday"
  echo "4: Thursday"
  echo "5: Friday"
  echo "6: Saturday"
  echo "7: Sunday"
  echo "8: Exit"
  echo
  echo
  echo "What day are we on, Jim?"
  read group

  case $group in
  1) echo "Let's get that run in!" ;;
  2) echo "It's Chest Day! " ;;
  3) echo "It's Back Day!" ;;
  4) echo "It's Arm Day!" ;;
  5) echo "It's Ab day - Get that Six Pack baby!" ;;
  6) echo "Leg Day! My favorite!" ;;
  7) echo "Shoulders! A nice easy day for us!" ;;
  8) exit=y ;;
  *) echo "Invalid Selection" ;;
  esac
done
