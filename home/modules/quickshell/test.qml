import QtQuick
import Quickshell
import Quickshell.Hyprland

PanelWindow {
    Rectangle {
        anchors.centerIn: parent
        color: "#ffffff"
        Text {
            anchors.centerIn: parent
            text: "󰫍 ★ 1"  // Иконка + обычный символ + цифра
            font.family: "JetBrainsMono Nerd Font"
            font.pixelSize: 32
            color: "#000000"
        }
    }
}