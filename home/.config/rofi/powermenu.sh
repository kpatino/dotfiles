#!/bin/bash

if [[ -n $@ ]]; then
    case $1 in
        'Lock')
            loginctl lock-session self;;
        'Logout')
            loginctl terminate-session self;;
        'Sleep')
            systemctl suspend;;
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
    echo -en "Sleep\x00icon\x1fsystem-suspend-symbolic\n"
    echo -en "Poweroff\x00icon\x1fsystem-shutdown-symbolic\n"
    echo -en "Reboot\x00icon\x1fsystem-reboot-symbolic\n"
    echo -en "Firmware\x00icon\x1fsystem-run-symbolic\n"
fi
