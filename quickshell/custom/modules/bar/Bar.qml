import QtQuick
import Quickshell
import Quickshell.Wayland

import "." as ContentModule
import "." as BarModule   // this imports BarGroup.qml

PanelWindow {
    id: barWindow

    anchors.top: true
    implicitWidth: Screen.width
    implicitHeight: 45
    color: "transparent"

    Component.onCompleted: {
        if (barWindow.WlrLayershell) {
            barWindow.WlrLayershell.layer = WlrLayer.Top
            barWindow.WlrLayershell.namespace = "quickshell:bar"
        }
    }

    // Wrap the bar content in BarGroup (this restores rounding)
    BarModule.BarGroup {
        anchors.fill: parent

        // Your actual bar content goes inside BarGroup
        ContentModule.BarContent {
            anchors.fill: parent
        }
    }
}
