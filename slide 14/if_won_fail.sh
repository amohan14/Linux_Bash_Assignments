#!/bin/bash

echo -n "Enter a number: "
read num
if [ "$num" -gt 10 ]
then
        echo "Won"
else
        echo "Fail"
fi

