#!/bin/bash

# read -p

echo "Enter the number -"
read n


i=1
  
while [ $i -le 10 ]
do
res=`expr $i \* $n`

echo "$n * $i = $res "

((++i))
done
# read -p "Enter table "



# a=7
# while [ $a -gt 4 ];
# do
#     echo $a
# done

# echo "Out of the loop"