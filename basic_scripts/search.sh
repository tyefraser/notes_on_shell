#!/bin/bash
directory="/path/to/target_directory"
search_string="your_search_string"

for file in "$directory"/*; do
    if [ -f "$file" ]; then
        if grep -q "$search_string" "$file"; then
            echo "Found '$search_string' in $file"
        fi
    fi
done
