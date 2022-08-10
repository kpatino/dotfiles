# How to use the Zink driver for OpenGL games

The Zink driver is not as good as the Mesa OpenGL driver for most cases, but for TF2 I have have a smoother experience with the Zink driver.

To use Zink, launch with `env MESA_LOADER_DRIVER_OVERRIDE=zink` or `MESA_LOADER_DRIVER_OVERRIDE=zink`

For Steam games, use `MESA_LOADER_DRIVER_OVERRIDE=zink %command%` for the launch command
