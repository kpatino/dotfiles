#!/bin/bash
# taken from https://github.com/Manjaro-Sway/desktop-settings/blob/sway/community/sway/usr/share/sway/scripts/sunset.sh

#Startup function
function start(){
    [[ -f "$HOME/.config/wlsunset/config" ]] && source "$HOME/.config/wlsunset/config"
    temp_low=${temp_low:-"3500"}
    temp_high=${temp_high:-"6500"}
    duration=${duration:-"900"}
    sunrise=${sunrise:-"07:00"}
    sunset=${sunset:-"19:00"}
    fallback_longitude=${fallback_longitude:-"-65.0"}
    fallback_latitude=${fallback_latitude:-"-65.0"}
    location=${location:-"on"}

    if [ "${location}" = "on" ]; then
        if [[ -z ${longitude+x} ]] || [[ -z ${latitude+x} ]]; then
            GEO_CONTENT=$(curl -sL http://ip-api.com/json/)
        fi
        longitude=${longitude:-$(echo $GEO_CONTENT | jq '.lon // empty')}
        longitude=${longitude:-$fallback_longitude}
        latitude=${latitude:-$(echo $GEO_CONTENT | jq '.lat // empty')}
        latitude=${latitude:-$fallback_latitude}

        echo longitude: $longitude latitude: $latitude

        wlsunset -l $latitude -L $longitude -t $temp_low -T $temp_high -d $duration &
    elif [ "${location}" = "manual" ];
    then
        wlsunset -t $temp_low -T $temp_high -l $latitude -L $longitude &
    else
        wlsunset -t $temp_low -T $temp_high -d $duration -S $sunrise -s $sunset &
    fi
}

#Accepts managing parameter
case $1'' in
'off')
    pkill wlsunset
    ;;
'on')
    start
    ;;
'toggle')
    if pkill -0 wlsunset; then
        pkill wlsunset
    else
        start
    fi
    ;;
'check')
    command -v wlsunset
    exit $?
    ;;
esac

#Returns a string for Waybar
if pkill -0 wlsunset; then
    class="on"
    text="<b>Night Light</b>\nEnabled"
else
    class="off"
    text="<b>Night Light</b>\nDisabled"
fi

printf '{"alt":"%s","tooltip":"%s"}\n' "$class" "$text"
