#! /usr/bin/bash

clear

for i in {1..10}
do
  echo "echo $i"
done

for j in {1,"dog",-5,"danger",-98}
do
  if [ $j == "danger" ]; then
    echo "We have to stop the loop here!"
    break
  fi

  echo "echo $j"
done
