#!/bin/bash

# read -p

echo "Enter the number -"
$1

i=1
  
while [ $i -le 10 ]
do
res=`expr $i \* $1`

echo "$1 * $i = $res "

((++i))
done


# read -p "Enter table "



# a=7
# while [ $a -gt 4 ];
# do
#     echo $a
# done

# echo "Out of the loop"