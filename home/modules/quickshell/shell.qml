import Quickshell
import QtQuick
import QtQuick.Layouts
import Quickshell.Hyprland
import Quickshell.Services.Pipewire
import Quickshell.Widgets

import qs.Widgets

import "./Data" as Dat
import "./Containers" as Con
import "./Modules/OSD/" as OSD

PanelWindow {
  id: root

  anchors.bottom: true
  implicitHeight: 35
  width: 1100
  color: "transparent"

  OSD.VolumeOSD {}

  Rectangle {
    anchors.fill: parent
    radius: 15
    color: Dat.Colors.colBG

    Item {
      id: base

      anchors.fill: parent
      anchors.margins: 4

      RowLayout {
        anchors.fill: parent

        Con.Left {
          Layout.fillHeight: true
          Layout.fillWidth: true
        }

        Con.Middle {
          Layout.fillHeight: true
          Layout.fillWidth: true
        }

        Con.Right {
          Layout.fillHeight: true
          Layout.fillWidth: true
        }
      }
    }
  }
}