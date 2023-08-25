#!/bin/bash
NUMBER=$1
if [ $NUMBER -le 10 ]
then 
    echo "$NUMBER is greater than or equal 10"
else
    echo "$NUMBER is not greater than 10"
fi