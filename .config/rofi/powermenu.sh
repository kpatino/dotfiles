#!/bin/bash

if [[ -n $@ ]]; then
	case $1 in
		'Lock')
			swaylock -Ffei '~/Pictures/Saved Pictures/Wallpapers/Landscapes/macos-monterey.jpeg';;
		'Logout')
			loginctl terminate-user $USER;;
		'Reboot')
			systemctl reboot;;
		'Shutdown')
			systemctl poweroff;;

	esac
else
	echo -en "Lock\x00icon\x1fsystem-lock-screen-symbolic\n"
	echo -en "Logout\x00icon\x1fsystem-log-out-symbolic\n"
	echo -en "Reboot\x00icon\x1fsystem-reboot-symbolic\n"
	echo -en "Shutdown\x00icon\x1fsystem-shutdown-symbolic\n"
fi
