#!/bin/zsh
# Add to path
export PATH="$HOME/.local/bin:$PATH"
export PATH="${PATH}:${HOME}/.local/bin/"

# https://wiki.archlinux.org/title/XDG_Base_Directory#User_directories
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state

# https://wiki.archlinux.org/title/XDG_Base_Directory#Supported
export ANSIBLE_HOME="$XDG_DATA_HOME"/ansible
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export GOPATH="$XDG_DATA_HOME"/go
export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export GTK_RC_FILES="$XDG_CONFIG_HOME"/gtk-1.0/gtkrc
export HISTFILE="$XDG_STATE_HOME"/zsh/history
export KDEHOME="$XDG_CONFIG_HOME"/kde
export LESSHISTFILE="$XDG_STATE_HOME"/less/history
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export PYLINTHOME="$XDG_CACHE_HOME"/pylint
export WGETRC="$XDG_CONFIG_HOME/wgetrc"
export WINEPREFIX="$XDG_DATA_HOME"/wineprefixes/default
export _JAVA_OPTIONS="-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java -Dawt.useSystemAAFontSettings=on -Dsun.java2d.uiScale=1.25"

export ANDROID_HOME="$XDG_DATA_HOME"/android

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

export PF_INFO="ascii title os host kernel uptime pkgs memory shell de palette"
