#!/bin/bash

# Boolean values in Bash are often represented by 0 (false) and 1 (true).
# Here, we'll use integers to represent boolean values.

# Define boolean values
true_value=1
false_value=0

# A simple function to check if a number is even
is_even() {
    if [ $(($1 % 2)) -eq $false_value ]; then
        return $true_value
    else
        return $false_value
    fi
}

# Using the is_even function
number=$1

if is_even $number; then
    echo "$number is even."
else
    echo "$number is odd."
fi
