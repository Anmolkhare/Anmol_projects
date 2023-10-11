#!/bin/bash

echo "Enter marks"
read mark

if [ "$mark" -gt 80 ] && [ "$mark" -lt 101 ]
then 
    echo "First Division"
elif [ "$mark" -gt 60 ] && [ "$mark" -lt 80 ]
then 
    echo "Second Division"
elif [ "$mark" -gt 40 ] && [ "$mark" -lt 60 ]
then 
    echo "Third Division"
elif [ "$mark" -gt 30 ] && [ "$mark" -lt 40 ]
then 
    echo "You are pass"
elif [ "$mark" -lt 30 ]
then	
    echo "You are fail"
fi
