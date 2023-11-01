#!/bin/bash
directory="/path/to/target_directory"
search_string="old_string"
replace_string="new_string"

for file in "$directory"/*; do
    new_name="${file//$search_string/$replace_string}"
    mv "$file" "$new_name"
    echo "Renamed $file to $new_name"
done
