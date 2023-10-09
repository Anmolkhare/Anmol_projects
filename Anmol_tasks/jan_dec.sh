#! bin/bash

if ["$1" == "1"];
then 
	echo "Monday"
elif [$1 == "2"];
then
    echo "tuesday"	
elif [$1 == "3"];
then
    echo "Wednesday"
elif [$1 == "4"];
then
    echo "Thursday"
elif [$1 == "5"];
then
    echo "Friday"
elif [$1 == "6"];
then
    echo "Saturday"
elif [$1 == "7"];
then
    echo "Sunday"
else
    echo "Invalid input. Please enter a number from 1 to 7."

fi
