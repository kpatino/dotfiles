# If running from tty1 start sway
if [ "$(tty)" = "/dev/tty1" ]; then
	exec sway
fi

export VIMINIT='source "$XDG_CONFIG_HOME/vim/vimrc"'
