//@ pragma UseQApplication
import Quickshell
import Quickshell.Wayland
import Quickshell.Io
import Quickshell.Hyprland
import QtQuick
import QtQuick.Layouts

PanelWindow {
    id: root

    // Theme
    property color colBg: "#1a1b26"
    property color colFg: "#a9b1d6"
    property color colMuted: "#444b6a"
    property color colCyan: "#0db9d7"
    property color colBlue: "#7aa2f7"
    property color colYellow: "#e0af68"
    property string fontFamily: "JetBrainsMono Nerd Font"
    property int fontSize: 14

    // System data
    property int cpuUsage: 0
    property int memUsage: 0
    property var lastCpuIdle: 0
    property var lastCpuTotal: 0

    // Processes and timers here...

    anchors.bottom: true
    width: 900
    implicitHeight: 30
    color: root.colBg

    Rectangle {
      id: bar
      color: root.colBg
      radius: 20

      RowLayout {
        anchors.fill: parent
        anchors.margins: 8
        spacing: 8
        Text {
          text: "penis"
          color: "#ffffff"
        }
        Text {
          text: "penis"
          color: "#ffffff"
        }
      }
    }
}