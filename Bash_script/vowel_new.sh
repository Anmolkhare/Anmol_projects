

#!/bin/bash

if [ "$1" = "a" ] || [ "$1" = "e" ] || [ "$1" = "i" ] || [ "$1" = "o" ] || [ "$1" = "u" ]; then
  echo "It is a vowel"
else 
  echo "It is not a vowel"
fi


# if ["$1" -eq "a"] || ["$1" -eq "e"] || ["$1" -eq "i"] || ["$1" -eq "o"] || ["$1" -eq "u"];
# then
# 	echo "It is vowel"
# else 
#     echo "Is is not vowel"
# fi