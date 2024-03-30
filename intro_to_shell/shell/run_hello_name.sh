#!/bin/bash

# Construct the relative path to the Python script
PYTHON_SCRIPT="../python/hello_name.py"

# Convert to an absolute path and fix potential doubling of the drive letter
PYTHON_SCRIPT_PATH=${PYTHON_SCRIPT/C:\\c\\/C:\\}
# echo PYTHON_SCRIPT_PATH is: $PYTHON_SCRIPT_PATH

# Execute the Python script with the fixed path
# echo running python script:
python3 "$PYTHON_SCRIPT_PATH" John

# echo done
