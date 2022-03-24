# Getting xdg-desktop-portal to work

## Packages

- xdg-desktop-portal
- xdg-desktop-portal-gtk
- xdg-desktop-portal-wlr

SystemD services should automatically start xdp and assuming environment variables are being passed (see top of the swaywm config). You'll need `xdg-desktop-portal-wlr` for wlroots specific functionality and `xdg-desktop-portal-gtk` for the rest of the functionality missing in xdpw (specifcally functionality flatpaks).

## Relevant Links

<https://github.com/swaywm/sway/wiki#gtk-applications-take-20-seconds-to-start>  
<https://github.com/swaywm/sway/issues/6587>  
<https://github.com/flatpak/xdg-desktop-portal/issues/636>  
