#!/bin/bash/

#Write a function, which take one argument and takes backup of that directory, backup location should have timestamp in it. ( tar )

read -p  "Enter the directory name: " dir_name
current_time=$(date "+%Y.%m.%d-%H.%M.%S")
dir_backup() {
if [ -e "$dir_name" ]
then
        tar -czf $dir_name$current_time.tar $dir_name/
else
        echo "Invalid directory"
fi
}
dir_backup "$dir_name"
~                        
