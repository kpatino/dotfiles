# Configuring flatpaks

You'll need to install the flatpak package and its dependencies and you'll also need xdg-desktop-portal-gtk (for applications) and xdg-desktop-wlr (for screensharing). If you don't have xdg-desktop-portal-gtk you may not be able to open links inside of flatpaks or use a file chooser/dialog.

## Packages

- xdg-desktop-portal
- xdg-desktop-portal-gtk
- xdg-desktop-portal-wlr

## Issues

### GTK themes

I think I needed to install adwaita-dark as a theme with `flatpak install org.gtk.Gtk3theme.Adwaita-dark` and then it worked.

### QT themes

I don't how to use adwaita-dark for these but it's not too a dealbreaker for me.

### Cursors not working

See [cursors.md](cursors.md)
