#! /usr/bin/bash

clear

mydate() {
  echo "today is: "
  date
  echo "have a GREAT day!"
}

hello2() {
  echo "hello, $1"
  echo "hello also to $2"

  return 23
}

echo "start here!"
mydate
echo "-------------"

hello2 "Douglas" "Fernanda"
echo "return value of hello2 is $?"

echo "move on..."
