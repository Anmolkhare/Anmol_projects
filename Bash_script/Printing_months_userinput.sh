#!/bin/bash

if [ "$1" -eq 1 ]; 
then
    echo "jan"
elif [ "$1" -eq 2 ]; 
then
    echo "feb"
elif [ "$1" -eq 3 ]; 
then
    echo "mar"
elif [ "$1" -eq 4 ]; 
then
    echo "apr"
elif [ "$1" -eq 5 ]; 
then
    echo "may"
elif [ "$1" -eq 6 ]; 
then
    echo "jun"
elif [ "$1" -eq 7 ]; 
then
    echo "jul"
elif [ "$1" -eq 8 ]; 
then
    echo "aug"
elif [ "$1" -eq 9 ]; 
then
    echo "sep"
elif [ "$1" -eq 10 ]; 
then
    echo "oct"
elif [ "$1" -eq 11 ]; 
then
    echo "nov"
elif [ "$1" -eq 12 ]; 
then
    echo "dec"
else
    echo "Invalid input. Please enter a number from 1 to 12."
fi
