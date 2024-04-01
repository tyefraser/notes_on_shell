#!/bin/bash

filename=shell/hello_world.sh

if [ -f "$filename" ]; then
  echo "$filename exists."
else
    echo "$filename does not exist."
fi

if [ -w "$filename" ]; then
  echo "$filename is writable."
else
  echo "$filename is not writable."
fi

string1=abc
string2=abc
if [ "$string1" = "$string2" ]; then
  echo "The strings are equal."
else
  echo "The strings are not equal."
fi

if [ -n "$variable" ]; then
  echo "Variable is set and not empty."
else
  echo "Variable is unset or empty."
fi
