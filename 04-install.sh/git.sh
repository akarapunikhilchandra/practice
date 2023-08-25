#!/bin/bash

# Check if Git is already installed
if which mysql >/dev/null 2>&1; then
    echo "mysql is already installed."
else
    echo "mysql is not installed. Installing Git..."
    sudo yum install mysql -y
    echo "mysql has been installed."
fi
