# Getting PipeWire to work

## Pipewire Packages

- gst-plugin-pipewire
- lib32-pipewire
- lib32-pipewire-jack
- pipewire
- pipewire-alsa
- pipewire-jack
- pipewire-pulse
- wireplumber

I haven't encountered any issues at the moment and so far it works better than `pulseaudio`. Pipewire should automatically just work out of the box. `pipewire-media-session` may be used as an alternative to `wireplumber` but it is recommended to use `wireplumber`. You also don't need pipewire-jack if you don't intend to use it.
