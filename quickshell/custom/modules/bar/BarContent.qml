import QtQuick
import QtQuick.Layouts

import qs
import qs.services
import qs.modules.common
import qs.modules.common.widgets
import qs.modules.common.models
import qs.modules.common.functions

import "." as WindowModule
import "." as WSModule
import "." as ClockModule
import "." as BatteryModule

Rectangle {
    anchors.fill: parent
    color: Appearance.colors.colLayer0

    // We switch from RowLayout to absolute anchoring for perfect centering
    Item {
        anchors.fill: parent

        // LEFT: Active window title
        WindowModule.ActiveWindow {
            anchors.left: parent.left
            anchors.leftMargin: 10
            anchors.verticalCenter: parent.verticalCenter
            width: 300
        }

        // CENTER: Workspaces (perfectly centered)
        Item {
            anchors.centerIn: parent
            width: workspaces.implicitWidth
            height: parent.height

            WSModule.Workspaces {
                id: workspaces
                anchors.centerIn: parent
            }
        }

        // RIGHT: Battery + Clock
        RowLayout {
            anchors.right: parent.right
            anchors.rightMargin: 10
            anchors.verticalCenter: parent.verticalCenter
            spacing: 8


            BatteryModule.BatteryIndicator { }
            ClockModule.ClockWidget { }
        }
    }
}




