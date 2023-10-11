#!/bin/bash
echo "Enter a filename: "
read filename

if [ -f "$filename" ]; then
    echo "File $filename exists."
    cat "$filename"
else
    echo "File $filename does not exist."
fi
