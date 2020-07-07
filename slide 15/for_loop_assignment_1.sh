#!/bin/bash/
  
echo  "Enter two numbers: "
read -a arr
#echo ${arr[*]}

for x in ${arr[*]}
do
        if [ ${arr[0]} -lt 10 ] || [ ${arr[1]} -lt 10 ]
        then
                echo "Printing all the numbers: " ${arr[*]}
                break
        else
                sum=$((${arr[0]}+${arr[1]}))
                echo "The sum is: " $sum
                break
        fi
done
