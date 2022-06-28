#! /usr/bin/bash

clear

for i in ./*
do
  echo "$i"
done

number=1
while [ $number -le 15 ];
do
  echo "$number"
  number=$((number += 4))
done