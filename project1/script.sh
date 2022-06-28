#! /usr/bin/bash

clear

rm -r ./hot-folder
mkdir ./hot-folder

for file in ~/Documents/*;
do
  if [ -f "$file" ]; then
    # -n to print the line number where the occurrence appeared
    # -i to set grep to non-sensitive
    search=$(grep -ni "spo" "$file")
    if [ -z "$search" ]; then
      echo "EMPTY"
    else
      echo "HOT FILE!"

      cp "$file" hot-folder
      echo " " >> hot-folder/"$file"
      echo "********" >> hot-folder/"$file"
      echo "$search" >> hot-folder/"$file"
    fi
  else
    echo "$file is NOT a file..."
  fi

  echo "-------------------------"
done
