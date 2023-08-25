#!/bin/bash
NUMBER=$1
if [ $NUMBER -l 10 ]
then 
    echo "$NUMBER is lesser than 10"
else
    echo "$NUMBER is greater than 10"
fi