#! /usr/bin/bash

clear

isdivisable() {
  for i in {2,3,5}
  do
    if [ $(($1 % $i)) -eq 0 ]; then
      echo "$1 is divisable by $i"
    else
      echo "$1 is NOT divisable by $i"
    fi
  done
}

read -p "Type a number: " number
isdivisable number
