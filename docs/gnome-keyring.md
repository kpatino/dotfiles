# Getting GNOME Keyring to work

## Packages

- gnome-keyring
- seahorse

1. Add `password optional pam_gnome_keyring.so` to the end of `/etc/pam.d/passwd`
2. Add `export $(gnome-keyring-daemon --start --components=pkcs11,secrets,ssh,gpg)` to your `.zshenv` or `.bash_profile`

## Relevant Links

<https://wiki.archlinux.org/title/GNOME/Keyring#PAM_step>  
<https://nurdletech.com/linux-notes/agents/keyring.html>
