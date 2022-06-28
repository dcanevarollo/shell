#! /usr/bin/bash
echo *----------------*

touch 1.txt 2.txt
ls -l $PWD >> 1.txt

read -p "What prefix you want to give to the file 1.txt? " prefix
mv 1.txt ${prefix}1.txt

echo *----------------*
