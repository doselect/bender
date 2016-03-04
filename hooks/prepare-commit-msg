#!/bin/bash

git rev-parse --show-toplevel | cd

file="VERSION"

if [ -f "$file" ]
  then
  version=$(<$file)
  echo "VERSION: $version" >> "$1"
fi
