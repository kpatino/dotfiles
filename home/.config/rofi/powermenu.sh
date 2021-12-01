#!/bin/bash

if [[ -n $@ ]]; then
    case $1 in
        'Lock')
            swaylock --config $XDG_CONFIG_HOME/swaylock/config -i "~/Pictures/Saved Pictures/Wallpapers/Landscapes/macos-monterey.jpeg";;
        'Logout')
            loginctl terminate-user $USER;;
        'Poweroff')
            systemctl poweroff;;
        'Reboot')
            systemctl reboot;;
        'Firmware')
            systemctl reboot --firmware-setup

    esac
else
    echo -en "Lock\x00icon\x1fsystem-lock-screen-symbolic\n"
    echo -en "Logout\x00icon\x1fsystem-log-out-symbolic\n"
    echo -en "Poweroff\x00icon\x1fsystem-shutdown-symbolic\n"
    echo -en "Reboot\x00icon\x1fsystem-reboot-symbolic\n"
    echo -en "Firmware\x00icon\x1fsystem-run-symbolic\n"
fi
