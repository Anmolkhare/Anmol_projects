#!/bin/bash

# read -p "Enter number" n 

# if [ n*2 -eq 0 ]
# then
#     echo "Even"	
echo -n "Enter a number:"
read n
echo -n "RESULT: "


# if [ `expr $n % 2` == 0 ]
# then
# 	echo " $n is even"
# # error without expr =	./odd_even_numbers.sh: line 11: [: too many arguments 13 is Odd

# else
# 	echo "$n is Odd"
# fi

if [ `expr $n % 2` == 0 ]
then
	echo " $n is Even"
else
   echo " $n is Odd"
fi    	