#!/bin/bash

# set -e
# set -u

file_name=rango
content_str=rango

if [ $# -lt 2 ]
then
	echo "Insufficient parameters Given"
    echo "Usage : "
    echo "        writer.sh <file_name> <content_str>"
    exit 1		
else
	file_name=$1
    content_str=$2
fi

targeted_directory="$(dirname $file_name)"

if [ ! -d "$targeted_directory" ]
then
    mkdir -p "$targeted_directory"
fi


echo $content_str > $file_name

