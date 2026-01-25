import QtQuick
import Quickshell
import Quickshell.Wayland
import qs.modules.common

/**
 * Vignette overlay for the bar
 * Provides an elegant gradient from top to bottom when bar has no background
 */
Variants {
    id: root
    model: Quickshell.screens

    PanelWindow {
        id: vignetteWindow
        required property var modelData

        screen: modelData

        // Layer above background but below bar
        WlrLayershell.layer: WlrLayer.Bottom
        WlrLayershell.namespace: "quickshell:barVignette"
        WlrLayershell.exclusionMode: ExclusionMode.Ignore
        WlrLayershell.keyboardFocus: WlrKeyboardFocus.None

        color: "transparent"

        readonly property bool vignetteEnabled: Config.options?.bar?.vignette?.enabled ?? false
        readonly property real vignetteIntensity: Config.options?.bar?.vignette?.intensity ?? 0.6
        readonly property real vignetteRadius: Config.options?.bar?.vignette?.radius ?? 0.5
        readonly property bool isBarAtTop: !(Config.options?.bar?.bottom ?? false)
        
        // Vignette height: extends from top/bottom of screen
        readonly property int vignetteHeight: {
            const screenHeight = modelData.height
            return Math.max(200, screenHeight * vignetteRadius)
        }

        visible: vignetteEnabled

        anchors {
            left: true
            right: true
            top: isBarAtTop
            bottom: !isBarAtTop
        }
        
        height: vignetteHeight

        Rectangle {
            anchors.fill: parent
            visible: vignetteWindow.vignetteEnabled
            color: "transparent"

            gradient: Gradient {
                orientation: Gradient.Vertical

                // OLD ARCH STYLE:
                // Strong dark at the very top
                GradientStop {
                    position: 0.0
                    color: vignetteWindow.isBarAtTop
                        ? Qt.rgba(0, 0, 0, vignetteWindow.vignetteIntensity)
                        : "transparent"
                }

                // Quick fade to transparent (this creates the arch illusion)
                GradientStop {
                    position: vignetteWindow.vignetteRadius
                    color: "transparent"
                }

                // Fully transparent at the bottom
                GradientStop {
                    position: 1.0
                    color: vignetteWindow.isBarAtTop
                        ? "transparent"
                        : Qt.rgba(0, 0, 0, vignetteWindow.vignetteIntensity)
                }
            }
        }
    }
}
