#!/bin/bash/
sudo du -hs /* 2>&1 | grep -v 'access' | sort -rh | head -3 | awk '{print $2}'

