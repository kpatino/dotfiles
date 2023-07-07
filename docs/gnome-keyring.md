# Setting up GNOME Keyring

Some applications expect a keyring to be running to safely store credentials.

## Packages

- gnome-keyring
- libgnome-keyring
- libsecret
- seahorse

## Configuration

1. Add `password optional pam_gnome_keyring.so` to the end of `/etc/pam.d/passwd`
2. Copy [gnome-keyring-daemon.service](/home/.config/systemd/gnome-keyring-daemon.service) to `$HOME/.config/systemd/`
3. Enable the systemd unit with `systemctl enable --user --now gnome-keyring-daemon.service`
4. Add `export SSH_AUTH_SOCK=/run/user/$(id -u)/keyring/ssh` to your environment or in your start script

## Relevant Links

<https://wiki.archlinux.org/title/GNOME/Keyring#PAM_step>  
<https://nurdletech.com/linux-notes/agents/keyring.html>  
<https://bbs.archlinux.org/viewtopic.php?id=277192>  
<https://github.com/microsoft/vscode-docs/blob/vnext/docs/editor/settings-sync.md#other-linux-desktop-environments>
