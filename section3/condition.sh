#! /usr/bin/bash

clear
read -p "How old are you? " age

if [ $age -lt 0 -o $age -gt 200 ]; then
  echo "This is impossible"
  exit
elif [ $age -le 64 -a $age -ge 26 ]; then
  echo "You are between 25 and 65"
else
  echo "You are still young... relatively"
fi

# 3 -eq 3   3 == 3
# 3 -ne 3   3 != 3
# 3 -gt 1   3 > 1
# 3 -lt 5   3 < 5
# 3 -ge 3   3 >= 3
# 3 -le 3   3 <= 3
