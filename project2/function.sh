#! /usr/bin/bash

get_file() {
  local str="$1" # string to look for
  local file="$2" # current file to search

  # -n to print the line number where the occurrence appeared
  # -i to set grep to non-sensitive
  search=$(grep -ni "$str" "$file")
  if [ -z "$search" ]; then
    echo "EMPTY"
  else
    echo "HOT FILE!"

    cp "$file" hot-folder
    echo " " >> hot-folder/"$file"
    echo "********" >> hot-folder/"$file"
    echo "$search" >> hot-folder/"$file"
  fi
}

clear

rm -r ./hot-folder
mkdir ./hot-folder

for dir in $(find ~/Documents -type d);
do
  if [ $dir != "./hot-folder" ]; then
    echo "************** Folder: $dir ************** "

    for file in $dir/*;
    do
      if [ -f "$file" ]; then
        get_file "spo" "$file"
      fi
    done

    echo "---------------"
    echo " "
  fi
done
