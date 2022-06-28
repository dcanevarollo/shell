#! /usr/bin/bash

cd ./data

for i in {1..3};
do
  touch "file${i}.txt"
done

for i in {1,2};
do
  touch "file${i}.jpg"
done

echo "Creating files..."
sleep 0.5
ls -l
echo ""

############################

while [ "$choice" != "t" -a "$choice" != "j" ];
do
  read -p "Do you want to rename .txt files or .jpg files? " choice
done

case $choice in
  "j")
    ext=".jpg"
    ;;
  "t")
    ext=".txt"
    ;;
  *)
    echo "Invalid choice"
    exit
esac

read -p "Choose a prefix to add to each $ext file: " prefix

for f in *"$ext"
do
  mv $f "${prefix}${f}"
done

echo "Done!"
ls -l *"$ext"

cd ../
