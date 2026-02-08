import QtQuick
import QtQuick.Layouts
import Quickshell.Hyprland
import "../Widgets/" as Wid
import "../Data" as Dat

Item {
  RowLayout {
    spacing: Dat.Fonts.fontSize - 1
    anchors.bottom: parent.bottom
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.top: parent.top

    // Workspaces
    Repeater {
        model: 9
        Item {
            property var ws: Hyprland.workspaces.values.find(w => w.id === index + 1)
            visible: ws ? true : false

            Text {
                property bool isActive: Hyprland.focusedWorkspace?.id === (index + 1)
                anchors.verticalCenter: parent.verticalCenter
                text: "󰫍"
                color: isActive ? Dat.Colors.colActive : Dat.Colors.colInActive
                font { family: Dat.Fonts.fontFamily; pixelSize: Dat.Fonts.fontSize + 10; bold: true }
                Behavior on color { ColorAnimation { duration: 200 } }
                MouseArea {
                    anchors.fill: parent
                    onClicked: Hyprland.dispatch("workspace " + (index + 1))
                }
                Text {
                  anchors.centerIn: parent
                  color: "#1e1e1e"
                  font { family: Dat.Fonts.fontFamily; pixelSize: Dat.Fonts.fontSize - 7; bold: true }
                  text: index + 1
                }
            }
        }
    }
  }
}