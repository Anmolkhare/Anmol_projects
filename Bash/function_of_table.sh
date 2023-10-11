#!/bin/bash

function_nam() {

   echo "Enter the number -"
   $1

   i=1
  
   while [ $i -le 10 ]
   do
   res=`expr $i \* $1`

   echo "$n * $i = $res "
   ((++i))
   done


}

function_nam