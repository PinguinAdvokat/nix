import QtQuick
import QtQuick.Layouts
import Quickshell.Services.Pipewire
import "../Widgets/" as Wid
import "../Data" as Dat

Item {
    RowLayout {
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        anchors.top: parent.top

        Wid.Connectivity {
        }

        Wid.Clock {
        }

        Rectangle {
            width: 0
        }
    }
}