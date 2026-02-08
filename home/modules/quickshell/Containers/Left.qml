import QtQuick
import QtQuick.Layouts
import Quickshell.Widgets

import "../Widgets/" as Wid
import "../Data/" as Dat

Item {
  RowLayout {
    anchors.bottom: parent.bottom
    anchors.left: parent.left
    anchors.top: parent.top

    Rectangle {
      width: 0
    }

    Rectangle {
      anchors.verticalCenter: parent.verticalCenter
      width: 28
      height: 28
      radius: 9
      color: Dat.Colors.colModuleBg
      Image {
        anchors.centerIn: parent
        source: "nixos.svg"
        width: 19
        height: 19
      }
      MouseArea {
          anchors.fill: parent
          onClicked: print("test")
      }
    }
    Rectangle {
      anchors.verticalCenter: parent.verticalCenter
      color: "#ffffff"
      Wid.Media {
        anchors.verticalCenter: parent.verticalCenter
      }
    }
  }
}