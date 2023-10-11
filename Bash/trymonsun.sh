#!/bin/bash

if [ $1 -eq 1 ]; then
    echo "Monday"
elif [ "$1" -eq "2" ]; then
    echo "Tuesday"
elif [ "$1" -eq "3" ]; then
    echo "Wednesday"
elif [ "$1" -eq "4" ]; then
    echo "Thursday"
elif [ "$1" -eq "5" ]; then
    echo "Friday"
elif [ "$1" -eq "6" ]; then
    echo "Saturday"
elif [ "$1" -eq "7" ]; then
    echo "Sunday"
else
    echo "Invalid input. Please enter a number from 1 to 7."
fi
