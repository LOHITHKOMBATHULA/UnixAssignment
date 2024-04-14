#!/bin/bash

echo "Welcome to the Basic Calculator Script using bc"
echo "Please enter the first number:"
read num1
echo "Please enter the second number:"
read num2

echo "Performing calculations:"
echo "$num1 + $num2 = $(echo "$num1 + $num2" | bc)"
echo "$num1 - $num2 = $(echo "$num1 - $num2" | bc)"
echo "$num1 * $num2 = $(echo "$num1 * $num2" | bc)"
echo "$num1 / $num2 = $(echo "$num1 / $num2" | bc)"
