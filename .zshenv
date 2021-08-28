#!/bin/zsh
# User Directories
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share

# Spring cleaning yay!!!
# Fixes
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export GOPATH="$XDG_DATA_HOME"/go
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export PYLINTHOME="$XDG_CACHE_HOME"/pylint
export LESSHISTFILE=-
export WINEPREFIX="$XDG_DATA_HOME"/wineprefixes/default

export EDITOR="vim"
export TERMINAL="foot"
export BROWSER="firefox"
export SHELL="zsh"
export XDG_SESSION_TYPE=wayland
export XDG_CURRENT_DESKTOP=sway

#export GDK_BACKEND=wayland
export QT_QPA_PLATFORM=wayland-egl
export QT_WAYLAND_FORCE_DPI=physical
export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
export QT_QPA_PLATFORMTHEME=qt5ct
export PATH="$HOME/.local/bin:$PATH"
export PATH="${PATH}:${HOME}/.local/bin/"

export _JAVA_AWT_WM_NONREPARENTING=1

export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# firefox fixes
# firefox is already running wayland and x11 apps
export MOZ_ENABLE_WAYLAND=1
export MOZ_DBUS_REMOTE=1
export MOZ_DISABLE_RDD_SANDBOX=1

# pfetch
export PF_INFO="ascii title os host kernel uptime pkgs memory shell de palette"
