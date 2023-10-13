#!/bin/bash

sum=0
read -p "enter num" num
for ((i = 1; i <= num; i++)); do
    sum=$((sum + i))
done

echo "The sum of numbers from 1 to 10 is: $sum"
