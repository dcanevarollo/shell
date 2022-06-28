#! /usr/bin/bash

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
        # -n to print the line number where the occurrence appeared
        # -i to set grep to non-sensitive
        search=$(grep -ni "spo" "$file")
        if [ ! -z "$search" ]; then
          echo "HOT FILE!"

          filename=$(basename "$file")

          cp "$file" hot-folder/"$filename"
          echo " " >> hot-folder/"$filename"
          echo "********" >> hot-folder/"$filename"
          echo "$search" >> hot-folder/"$filename"
        fi
      fi
    done

    echo "---------------"
    echo " "
  fi
done
