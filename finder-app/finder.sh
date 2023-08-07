#!/bin/bash

# set -e
# set -u

if [ $# -lt 2 ]
then
	echo "Insufficient parameters Given"
    echo "Usage : "
    echo "        finder.sh <file_dir> <search_str>"
    exit 1		
else
	files_dir=$1
    search_str=$2
fi
if [ -d "$files_dir" ]
then
    total_files=$(ls $files_dir -Rl | grep "^-" | wc -l)
    total_str_match=$(grep ${search_str} -r ${files_dir} | wc -l)
    echo "The number of files are $total_files and the number of matching lines are $total_str_match"
else
    echo "Directory Doesn't Exists !!!"
    exit 1
fi

