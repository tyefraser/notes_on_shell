#!/bin/bash

# Check if a file path is provided as an argument
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 path_to_csv_file"
    exit 1
fi

# Read the CSV file line by line
while IFS=, read -r position name
do
    # Skip the header line
    if [ "$position" != "position" ]; then
        # Handle ordinal suffix for the position (1st, 2nd, 3rd, etc.)
        suffix="th"
        case "$position" in
            *1) suffix="st" ;;
            *2) suffix="nd" ;;
            *3) suffix="rd" ;;
        esac

        # Avoid applying suffix rules for 11, 12, 13
        case "$position" in
            11|12|13) suffix="th" ;;
        esac

        echo "In $position$suffix place is $name"
    fi
done < "$1"
