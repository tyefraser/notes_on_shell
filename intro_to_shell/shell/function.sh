#!/bin/bash

greet() {
  echo "Hello, $1!"
}

greet "John"


sum(){
    sum=$(($1 + $2))
    echo $sum
}

sum 1 5
