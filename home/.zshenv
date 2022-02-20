#!/bin/zsh
# Add to path
export PATH="$HOME/.local/bin:$PATH"
export PATH="${PATH}:${HOME}/.local/bin/"

# https://wiki.archlinux.org/title/XDG_Base_Directory#User_directories
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share

# https://wiki.archlinux.org/title/XDG_Base_Directory#Supported
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export GOPATH="$XDG_DATA_HOME"/go
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export GTK_RC_FILES="$XDG_CONFIG_HOME"/gtk-1.0/gtkrc
export KDEHOME="$XDG_CONFIG_HOME"/kde
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export PYLINTHOME="$XDG_CACHE_HOME"/pylint
export WGETRC="$XDG_CONFIG_HOME/wgetrc"
export WINEPREFIX="$XDG_DATA_HOME"/wineprefixes/default
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java

# i forgor 💀
export LESSHISTFILE=-

# Preferences
export BROWSER="firefox"
export EDITOR="vim"
export SHELL="zsh"
export TERMINAL="foot"

# https://wiki.archlinux.org/title/Wayland#GUI_libraries
export CLUTTER_BACKEND=wayland
export ECORE_EVAS_ENGINE=wayland-egl
export ELM_ENGINE=wayland_egl
export MOZ_ENABLE_WAYLAND=1
export QT_QPA_PLATFORM=wayland
# https://wiki.archlinux.org/title/Firefox#Applications_on_Wayland_can_not_launch_Firefox
export MOZ_DBUS_REMOTE=1
# https://github.com/swaywm/sway/wiki#disabling-client-side-qt-decorations
export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
# https://github.com/swaywm/sway/wiki#issues-with-java-applications
export _JAVA_AWT_WM_NONREPARENTING=1

# QT settings
export QT_PLUGIN_PATH=/usr/lib/qt/plugins
export QT_WAYLAND_FORCE_DPI=physical
# https://github.com/FedoraQt/QGnomePlatform
export QT_QPA_PLATFORMTHEME='gnome'

# Export languages
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# https://wiki.archlinux.org/title/GNOME/Keyring#PAM_step
# https://nurdletech.com/linux-notes/agents/keyring.html
export $(gnome-keyring-daemon --start --components=pkcs11,secrets,ssh,gpg)
