# Configuring flatpaks

You'll need to install the flatpak package and its dependencies and you'll also need xdg-desktop-portal-gtk (for applications) and xdg-desktop-wlr (for screensharing). If you don't have xdg-desktop-portal-gtk you may not be able to open links inside of flatpaks or use a file chooser/dialog.

## Packages

- xdg-desktop-portal
- xdg-desktop-portal-gtk
- xdg-desktop-portal-wlr

## GTK themes

For adwaita-dark you need to install the adwaita-dark flatpak theme. No need to set an enviroment variable for the theme to be used. It should be picked up by flatpak.
`flatpak install org.gtk.Gtk3theme.Adwaita-dark`

For adw-gtk3 install the following.

- Light theme: `flatpak install org.gtk.Gtk3theme.adw-gtk3`
- Dark theme: `flatpak install org.gtk.Gtk3theme.adw-gtk3-dark`

## QT themes

For qgnomeplatform I needed to download the right theme versions for PolyMC, OBS and Vorta  
I needed to install versions 5.15, 5.15-21.08 (PolyMC), and 5.14 (Vorta)

- `flatpak install org.kde.KStyle.Adwaita`
- `flatpak install org.kde.PlatformTheme.QGnomePlatform`

## Cursors not working

See [cursors.md](cursors.md)
