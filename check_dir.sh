#!/bin/bash
DIR="/home/ajay/devops"
if [ -d "$DIR" ]; then
echo "directory exists"
exit 0
else
echo "directory does not exist"
exit 1
fi
