# How to use the Zink driver for OpenGL games

The Zink driver is not as good as the Mesa OpenGL driver for most cases

To use Zink, launch with `env MESA_LOADER_DRIVER_OVERRIDE=zink` or `MESA_LOADER_DRIVER_OVERRIDE=zink` or `export MESA_LOADER_DRIVER_OVERRIDE=zink`

For Steam games, use `MESA_LOADER_DRIVER_OVERRIDE=zink %command%` in the launch options
