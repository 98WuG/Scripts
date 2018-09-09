#!/bin/bash

declare -a arr=("Documents" "Downloads" "Pictures" "Videos")

for i in "${arr[@]}"
do
	echo "Mounting $i"
	sshfs desktop:/mnt/data/"$i" ~/"$i"
	echo "Done mounting"
done
