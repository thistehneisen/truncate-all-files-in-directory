#!/bin/bash

dir_path="./path/to"

for file in "$dir_path"/*; do
  if [ -f "$file" ]; then
    ext="${file##*.}"
    filename="${file%.*}"
    new_file="${filename}_truncated.${ext}"
    cp "$file" "$new_file"
    truncate -s 1024K "$new_file"
  fi
done

echo "Truncated copies of all files have been created."
