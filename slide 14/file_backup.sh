#!/bin/bash

#Accepts a file name.
#Checks if file exists.
#If file exists, copy the file to the same name + .bak + the current date (if the backup file
#already exists ask if you want to replace it).

echo -n "Enter the file name: "
read file
if [ -f $file ] ; then
        back_up=$(echo "$file.bak_`date +%d-%m-%Y`")
        cp -i $file $back_up
else
        echo "Invalid Filename"
fi
