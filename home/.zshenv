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

# Export languages
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export PF_INFO="ascii title os host kernel uptime pkgs memory shell de palette"

# Added by Toolbox App
export PATH="$PATH:/home/kpatino/.local/share/JetBrains/Toolbox/scripts"
