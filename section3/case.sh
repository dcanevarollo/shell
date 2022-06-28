#! /usr/bin/bash

clear
echo "select an option... "
read choice

case $choice in
  "hello")
    echo "you typed hello"
    ;;
  *".txt")
    echo "this is a .txt file"
    ;;
  3)
    echo "you choose C"
    ;;
  4)
    echo "you choose D"
    ;;
  *)
    echo "none of the above"
esac

echo "type a character... "
read character

case $character in
  [0-9])
    echo "this is a number"
    ;;
  1[0-9] | 2[0-9])
    echo "you typed a different number"
    ;;
  [a-z])
    echo "this is a lower case letter"
    ;;
  [A-Z])
    echo "this is a upper case letter"
    ;;
  *)
    echo "I don't know what you want"
esac
