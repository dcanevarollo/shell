#! /usr/bin/bash

read -p "What is the name of the script? " scriptname
touch $scriptname

bashpath=$(which bash)
echo "#! $bashpath" >> $scriptname

echo "echo This is working now" >> $scriptname
