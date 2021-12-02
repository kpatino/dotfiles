# Getting xdg-desktop-portal to work

## Packages

- xdg-desktop-portal-git
- xdg-desktop-portal-gtk
- xdg-desktop-portal-wlr

SystemD services should automatically start and assuming environment variables are being passed (see top of the swaywm config). You'll need `xdg-desktop-portal-wlr` for screensharing functionality and `xdg-desktop-portal-gtk` for proper functionality with flatpaks.

## Issues

The current stable `xdg-desktop-portal` package causes the 20 second GTK bug despite the enviroment variables being passed when `xdg-desktop-portal-gtk` is installed. The current git package `xdg-desktop-portal-git` remedies it without anything needing to be changed.

## Relevant Links

<https://github.com/swaywm/sway/wiki#gtk-applications-take-20-seconds-to-start>  
<https://github.com/swaywm/sway/issues/6587>  
<https://github.com/flatpak/xdg-desktop-portal/issues/636>  
