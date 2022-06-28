#! /usr/bin/bash

clear
read -sp "Type the password to know the file name: " password

if [ -z "$password" ]; then
  echo "This is an empty string"
  exit
fi

if [ "$password" == 'Table1X' ]; then
  echo "Correct! File name is: catfile.txt"
else
  echo "Incorrect"
  exit
fi
