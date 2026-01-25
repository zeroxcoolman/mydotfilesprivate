import QtQuick
import Quickshell
import Quickshell.Wayland
import Quickshell.Hyprland

import "modules/bar" as BarModule

ShellRoot {
    // Vignette window (optional)
    BarModule.BarVignette { }

    // Main bar window
    BarModule.Bar { }
}


