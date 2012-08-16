#!/bin/bash

date=$(date +%Y-%m-%d-%A)
filename=$HOME/docs/log/$date

if [ ! -e "$filename" ];
then
	echo "$date" >> $filename
	echo  >> $filename
fi

echo >> $filename
current_time=$(date +%r)
echo [$current_time] >> $filename

vim + $filename
