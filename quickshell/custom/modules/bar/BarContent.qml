import QtQuick
import QtQuick.Layouts

import qs
import qs.services
import qs.modules.common
import qs.modules.common.widgets
import qs.modules.common.models
import qs.modules.common.functions

import "." as Local
import "." as WindowModule
import "." as WSModule
import "." as ClockModule
import "." as BatteryModule
import "." as ResourcesModule
import "." as SysTray
import "." as Swaync

Rectangle {
    anchors.fill: parent
    color: Appearance.colors.colLayer0

    
    component VerticalBarSeparator: Rectangle {
    implicitWidth: 1
    implicitHeight: Appearance.sizes.barHeight * 0.5
    anchors.verticalCenter: parent.verticalCenter
    color: Appearance.colors.colOutlineVariant
}

    // ───────────────────────────────────────────────
    // Main content container
    // ───────────────────────────────────────────────
    Item {
        anchors.fill: parent

        // ───────────────────────────────────────────
        // LEFT SECTION: Sidebar button + Active Window
        // ───────────────────────────────────────────
        RowLayout {
            anchors.left: parent.left
            anchors.leftMargin: 5
            anchors.verticalCenter: parent.verticalCenter
            spacing: 8

            LeftSidebarButton { }


            WindowModule.ActiveWindow {
                Layout.preferredWidth: 300
                Layout.alignment: Qt.AlignVCenter
            }
        }

        // ───────────────────────────────────────────
        // CENTER SECTION: Workspaces (perfectly centered)
        // ───────────────────────────────────────────
        Item {
            anchors.centerIn: parent
            width: workspaces.implicitWidth
            height: parent.height

            WSModule.Workspaces {
                id: workspaces
                anchors.centerIn: parent
            }
        }



        // ───────────────────────────────────────────
        // RIGHT SECTION: Resources + Battery + Clock
        // ───────────────────────────────────────────
        RowLayout {
            anchors.right: parent.right
            anchors.rightMargin: 10
            anchors.verticalCenter: parent.verticalCenter
            spacing: 12

            SysTray.SysTray {
                id: sysTray
                visible: (Config.options?.bar?.modules?.sysTray ?? true) && root.useShortenedForm === 0
                Layout.fillWidth: false
                Layout.fillHeight: true
                invertSide: Config.options?.bar?.bottom ?? false
            }
            
Swaync.Swaync { }

VerticalBarSeparator { }

BatteryModule.BatteryIndicator { }


VerticalBarSeparator { }


ClockModule.ClockWidget {
    id: clock
}

        }
    }
}
