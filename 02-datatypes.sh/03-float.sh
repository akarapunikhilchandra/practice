#!/bin/bash

float_num1=3.14
float_num2=2.71

# Performing arithmetic operations using shell's built-in arithmetic
sum=$((float_num1 + float_num2))
difference=$((float_num1 - float_num2))
product=$((float_num1 * float_num2))
division=$(echo "scale=2; $float_num1 / $float_num2" | bc)

echo "Sum: $sum"
echo "Difference: $difference"
echo "Product: $product"
echo "Division: $division"
