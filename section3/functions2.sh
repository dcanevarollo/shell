#! /usr/bin/bash

clear

myfunction() {
  var1="Eggs"
  local var2="Salad"

  echo "My variable inside the function is: $var1"
}

echo "Start the program"

myfunction

# Every variable in shell scripting is global if the 'local' modifier isn't
# defined
echo "Outside: $var1"
echo "Scoped: $var2"
