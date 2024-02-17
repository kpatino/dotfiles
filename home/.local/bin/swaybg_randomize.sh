#!/bin/bash

# This script will randomly go through the files of a directory, setting it
# up as the wallpaper at regular intervals
#
# NOTE: this script is in bash (not posix shell), because the RANDOM variable
# we use is not defined in posix

if [[ $# -ne 2 ]] || [[ ! -d $1 ]]; then
	echo "Usage:
	$0 <dir containing images> <interval in seconds>"
	exit 1
fi

while true; do
	find "$1" -type f \
		| while read -r img; do
			echo "$((RANDOM % 1000)):$img"
		done \
		| sort -n | cut -d':' -f2- \
		| while read -r img; do
			LAST_SWAYBG_PID=$(pgrep -x swaybg)
			sh -c "swaybg -m fill -i $img &"
			sleep 0.5
			kill $LAST_SWAYBG_PID
			sleep $2
		done
done
