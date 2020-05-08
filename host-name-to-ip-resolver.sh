#!/bin/bash

if [[ -z $1 ]]; then
	echo "File containing host names not provided."
	exit
fi

for i in $(cat $1);do
	getent hosts $i | awk '{ print $1 }'	
done

