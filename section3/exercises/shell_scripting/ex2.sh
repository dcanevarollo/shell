#! /usr/bin/bash

clear

counter=0
for f in ../*".txt"
do
  counter=$(( counter += 1 ))
done

echo "Number of .txt files is $counter"
