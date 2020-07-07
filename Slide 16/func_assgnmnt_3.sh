#!/bin/bash

#Add user, takes an argument if the user does not exists, add it ( cmd : adduser ), otherwise errors out with log file.
echo -n "Enter your login name: "; read name
grep $name /etc/passwd
add_user() {
if [ $? -eq 0 ]; then
echo "User Exists: " $name >> err.log
else
echo "Adding user to list"
sudo adduser "$name"
fi
}
add_user "$name"
