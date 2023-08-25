#!/bin/bash

# Declare some string variables
name="Alice"
greeting="Hello"

# Concatenate strings
message="$greeting, $name!"

# Print the concatenated string
echo $message

# Check if two strings are equal
if [ "$name" == "Alice" ]; then
    echo "Hello, Alice!"
else
    echo "You're not Alice."
fi

# Check the length of a string
length=${#message}
echo "Length of message: $length"

# Extract a substring
substring=${message:6:5}
echo "Substring: $substring"

# Find the index of a substring
index=$(expr index "$message" "Alice")
echo "Index of 'Alice': $index"
