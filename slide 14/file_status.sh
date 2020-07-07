#!/bin/bash
echo -n "Enter the full path of file: "
read file

if [ -f $file ]
then
        ls -al $file
else
        echo "File doesn't exist"
fi
