#!/usr/bin/bash

add() {
  echo "Enter the first number : "
  read num1
  echo "Enter the second number : "
  read num2
  echo "The sum of $num1 and $num2 is: $((num1 + num2))"
  echo "returning to main menu in 5 seconds"
  sleep 5
  return
}

subtract() {
  echo "Enter the first number : "
  read num1
  echo "Enter the second number : "
  read num2
  echo "The difference of $num1 and $num2 is: $((num1 - num2))"
  echo "returning to main menu in 5 seconds"
  sleep 5
  return
}

multiply() {
  echo "Enter the first number : "
  read num1
  echo "Enter the second number : "
  read num2
  echo "The product of $num1 and $num2 is: $((num1 * num2))"
  echo "returning to main menu in 5 seconds"
  sleep 5
  return
}

divide() {
  echo "Enter the first number : "
  read num1
  echo "Enter the second number : "
  read num2
  echo "The quotient of $num1 and $num2 is: $((num1 / num2))"
  echo "returning to main menu in 5 seconds"
  sleep 5
  return
}
modulo() {
  echo "Enter the first number : "
  read num1
  echo "Enter the second number : "
  read num2
  echo "The modulus of $num1 and $num2 is: $((num1 % num2))"
  echo "returning to main menu in 5 seconds"
  sleep 5
  return
}

clear
exit=n

while [ "$exit" = n ]; do
  echo "*** MENU ***"
  echo "1. For Addition"
  echo "2. For Subtraction"
  echo "3. For Multiplication"
  echo "4. For Division"
  echo "5. For Modulus"
  echo "6. To Quit"
  read choice

  case $choice in
  1) add ;;
  2) subtract ;;
  3) multiply ;;
  4) divide ;;
  5) modulo ;;
  6) exit=y ;;
  *) echo "Invalid Selection" ;;
  esac
done
