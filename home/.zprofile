# If running from tty1 start sway
[ "$(tty)" = "/dev/tty1" ] && start-sway

[ "$(tty)" = "/dev/tty7" ] && start-hyprland
