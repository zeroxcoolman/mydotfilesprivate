import QtQuick
import QtQuick.Layouts
import qs.modules.common
import qs.modules.common.widgets
import qs.services
import Quickshell.Io

RippleButton {
    id: root

    // Tight sizing
    implicitWidth: iconRow.implicitWidth
    implicitHeight: iconRow.implicitHeight + 4

    // Hover + ripple colors (same as your sidebar button)
    buttonRadius: Appearance.rounding.full
    colBackgroundHover: Appearance.colors.colLayer1Hover
    colRipple: Appearance.colors.colLayer1Active

    // Notification state
    property bool dnd: false
    property bool hasUnread: false

    // Process runner
    Process {
    id: proc

    stdout: StdioCollector {
    onStreamFinished: {
        const raw = text.trim()
        if (!raw.length)
            return

        const lines = raw.split("\n")
        const last = lines[lines.length - 1].trim()

        try {
            const data = JSON.parse(last)

            // unread
            root.hasUnread = Number(data.text) > 0

            // class can be string or array
            let cls = data.class
            if (Array.isArray(cls))
                cls = cls.join(" ")

            // dnd if alt starts with dnd-* or class contains "dnd"
            root.dnd = (typeof data.alt === "string" && data.alt.startsWith("dnd"))
                || (typeof cls === "string" && cls.includes("dnd"))

        } catch (e) {
            console.log("Swaync parse error:", e, last)
        }
    }
}

}


    // Left click → toggle notification center
    onPressed: {
        proc.command = ["swaync-client", "-t", "-sw"]
        proc.startDetached()
    }


    // Poll swaync state (like Waybar exec)
Timer {
    interval: 250
    running: true
    repeat: true
    onTriggered: proc.exec(["swaync-client", "-swb"])
}



    // Parse swaync-client -swb JSON output
    Connections {
            target: proc.stdout
            function onStreamFinished() {
                try {
                    const data = JSON.parse(proc.stdout.text)

                    root.hasUnread = Number(data.text) > 0
                    root.dnd = data.alt.startsWith("dnd")

                } catch(e) {
                    console.log("Swaync parse error:", e, proc.stdout.text)
                }
            }
        }


    // UI
    contentItem: RowLayout {
        id: iconRow
        anchors.centerIn: parent
        spacing: 4

        StyledText {
            Layout.alignment: Qt.AlignVCenter
            font.pixelSize: Appearance.font.pixelSize.large
            color: Appearance.colors.colOnLayer1

            text: root.dnd
                ? (root.hasUnread ? " " : "")
                : (root.hasUnread ? " " : "")
        }
    }
}
