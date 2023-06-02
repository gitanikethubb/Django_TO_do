#!/bin/bash

 df -h | awk '{print $1 "  "$5}' | while read output;
do
#echo "$output"
usage=$(echo $output | awk '{print $2}' | cut -d '%' -f1)
file=$(echo $output | awk '{print $1}')
#echo "$usage"
#echo "$file"
if  [ "$usage" -ge 0 ];
then
	echo "critical  $file"
fi	
done	
