#!/bin/bash

exec < /dev/tty

git rev-parse --show-toplevel | cd

file="VERSION"

if [ -f "$file" ]
  then
  echo "$file file found [OK]"
  version=$(<$file)
  echo "Current version: $version"
  IFS='.' read -ra POSITION <<< "$version"
  
  echo "This commit is a major (or) minor (or) patch? Reply with '1' for Major | '2' for Minor | '3' for Patch"
  
  function readver {
  read v
  if [[ $v -eq 1 ]]
    then
    echo "[OK]"
    ((POSITION[0]++))
    ((POSITION[1] = 0))
    ((POSITION[2] = 0))
  elif [[ $v -eq 2 ]]
    then
    echo "[OK]"
      ((POSITION[1]++))
    ((POSITION[2] = 0))
  elif [[ $v -eq 3 ]]
    then
    echo "[OK]"
    ((POSITION[2]++))
  else
    echo "Meh! You can't leave it empty!"
      readver
    fi
  }
  
  readver
  (IFS=.; echo "${POSITION[*]}" > $file)
  
else
  echo "$file file not found."
  echo "Setting initial version to 0.1.0 [OK]"
  touch $file
  echo "0.1.0" > $file
fi

git add $file

exec <&-
