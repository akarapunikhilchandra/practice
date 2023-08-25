#!/bin/bash

# Check if Git is already installed
if which git >/dev/null 2>&1; then
    echo "Git is already installed."
else
    echo "Git is not installed. Installing Git..."
    sudo yum install git -y
    echo "Git has been installed."
fi
