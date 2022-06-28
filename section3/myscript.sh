#! /usr/bin/bash

read -p "What is your name? " yourname
echo "Hello ${yourname}, nice to meet you."

read -p "Tell me the path of the file you want to open: " filepath
start $filepath

echo ----------------------*

# this is a comment for myself
# they do not affect in any way the program
