# ADD THIS INTO YOUR /etc/default/grub
### (if you arent nvidia SKIP THIS and this is MY SETUP)

```
GRUB_CMDLINE_LINUX_DEFAULT="modprobe.blacklist=nvidia,nvidia_drm,nvidia_modeset,nvidia_uvm"
```

## This makes it so that nvidia doesnt steal the DRM master, and everything actually works

## Or if you already have stuff inside GRUB_CMDLINE_LINUX_DEFAULT then you just append it

```
GRUB_CMDLINE_LINUX_DEFAULT="(args) modprobe.blacklist=nvidia,nvidia_drm,nvidia_modeset,nvidia_uvm"
```

