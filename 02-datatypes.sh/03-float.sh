#!/bin/bash

# Assigning floating-point values to variables
float_num1=2.5
float_num2=2.5

# Performing arithmetic operations
sum=$(echo "$float_num1 + $float_num2" | bc)
difference=$(echo "$float_num1 - $float_num2" | bc)
product=$(echo "$float_num1 * $float_num2" | bc)
division=$(echo "scale=2; $float_num1 / $float_num2" | bc)

# Displaying the results
echo "Sum: $sum"
echo "Difference: $difference"
echo "Product: $product"
echo "Division: $division"
