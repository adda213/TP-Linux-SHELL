#!/bin/sh
dirname=$1
file_number=$2
inter_sleep=$3
repository=$4
prefix=$5
mkdir -p ${dirname}/${repository}
for ((j=1;j<="$file_number";j++))
do 
FILE=${prefix}_`date +%Y-%m-%d-%H-%M-%S-%3N`.txt
touch ${dirname}/${repository}/$FILE
sleep $inter_sleep
done
