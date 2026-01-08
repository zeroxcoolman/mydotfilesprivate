# RUN THIS!!!! AFTER YOU COPY ALL THE FILES
# THIS WILL RUN THE NOCTALIA-SHELL SERVICE 
<sub>(has to be run manually by the WM)</sub>

### Add this:
```
exec-once = dbus-update-activation-environment --systemd --all
exec-once = systemctl --user start hyprland-session.target
```
### Into your compositor config (like /etc/mango/config.conf or hyprland.conf)

### Then bind service to compositor target
```
systemctl --user add-wants hyprland-session.target noctalia.service
```

#### I just did it like this due to noctalia daemon being annoying on mangowc
### OR if hyprland, niri just add this 
```
qs -c noctalia-shell
```
### To your shell config for example
```
exec-once = qs -c noctalia-shell
```

### Or for niri
```
spawn-sh-at-startup "qs -c noctalia-shell"
```
