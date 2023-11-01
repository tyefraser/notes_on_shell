#!/bin/bash
echo "Enter first number:"
read num1
echo "Enter second number:"
read num2
echo "Select operation: +, -, *, /"
read operator

result=0
case $operator in
    +) result=$(echo "$num1 + $num2" | bc) ;;
    -) result=$(echo "$num1 - $num2" | bc) ;;
    *) echo "Invalid operator"; exit 1 ;;
esac

echo "Result: $result"
