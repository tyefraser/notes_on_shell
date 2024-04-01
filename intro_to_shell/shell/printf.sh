#!/bin/bash

echo "Enter your name: "
read name
echo "Enter your favourite number: "
read fav
printf "Hello, %s! Your favourite number is %d.\n" "$name" "$fav"
