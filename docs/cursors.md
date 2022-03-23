# Configuring cursors in Sway

Really annoying to configure. In my experience I need to set the cursor in 3 different ways so that all apps pick it up, `seat seat0 xcursor_theme {cursor_name} {size}`, set it with `gsettings`, and set it through `~/.icons/default/index.theme` so that all apps use the same cursor. Luckily I don't change my cursors all that often, but still a hastle that it isn't pixed up with the first command.

## Flatpaks not picking up cursors

Set up `~/.icons/default/index.theme`

Then apply this flatpak override

`flatpak override --user --filesystem=~/.icons:ro`

May or may not need

`flatpak override --user --filesystem=/usr/share/icons:ro`

## Relevant links

https://wiki.archlinux.org/title/Cursor_themes#Configuration