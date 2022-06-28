#! /usr/bin/bash

clear
read -p "Give me the name of the file: " myfile

if [ -e $myfile ]; then
  echo "$myfile EXISTS"
fi

if [ ! -e $myfile ]; then
  echo "$myfile DOES NOT EXIST"
fi

if [ -d $myfile ]; then
  echo "$myfile IS A DIRECTORY"
elif [ -f $myfile ]; then
  echo "$myfile IS A REGULAR FILE"
fi

if [ -r $myfile ]; then
  echo "$myfile IS READABLE"
fi

if [ -w $myfile ]; then
  echo "$myfile IS WRITABLE"
fi

if [ -x $myfile ]; then
  echo "$myfile IS EXECUTABLE"
fi

if [ -s $myfile ]; then
  echo "$myfile IS NOT EMPTY"
else
  echo "$myfile IS EMPTY"
fi
