# ADD THIS INTO YOUR /etc/default/grub
### (if you arent nvidia SKIP THIS and this is MY SETUP)

```
modprobe.blacklist=nvidia,nvidia_drm,nvidia_modeset,nvidia_uvm
```

### This makes it so that nvidia doesnt steal the DRM master, and everything actually works
