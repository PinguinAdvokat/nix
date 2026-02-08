import QtQuick
import qs.Services
import QtQuick.Layouts
import qs.Widgets

import "../Data/" as Dat
import "../Generics/" as Gen

Row {
    id: rightPills
    spacing: 6
    
    // ═══ PILL 1: Network + Bluetooth (Connectivity) ═══
    Rectangle {
        id: connectivityPill
        height: 29
        width: connectivityContent.implicitWidth + 16
        radius: 9
        color: Dat.Colors.colModuleBg
        border.width: 1
        border.color: Qt.rgba(0, 0, 0, 0.15)
        
        Behavior on color {
            ColorAnimation { duration: 300 }
        }
        Behavior on width {
            NumberAnimation { duration: 250; easing.type: Easing.OutCubic }
        }
        
        // Highlight
        Rectangle {
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.margins: 1
            height: parent.height / 2
            radius: parent.radius - 1
            gradient: Gradient {
                GradientStop { position: 0.0; color: Qt.rgba(1, 1, 1, 0.04) }
                GradientStop { position: 1.0; color: "transparent" }
            }
        }
        
        Row {
            id: connectivityContent
            anchors.centerIn: parent
            spacing: 4
            
            Loader {
                id: networkLoader
                anchors.verticalCenter: parent.verticalCenter
                asynchronous: true
                source: "components/Network.qml"
                
                Binding {
                    target: networkLoader.item
                    property: "barWindow"
                    value: root.barWindow
                    when: networkLoader.status === Loader.Ready && root.barWindow !== undefined
                    restoreMode: Binding.RestoreBinding
                }
                
                Binding {
                    target: networkLoader.item
                    property: "networkPopup"
                    value: root.networkPopup
                    when: networkLoader.status === Loader.Ready && root.networkPopup !== undefined
                    restoreMode: Binding.RestoreBinding
                }
            }
            
            // Separator
            Rectangle {
                anchors.verticalCenter: parent.verticalCenter
                width: 1
                height: 12
                radius: 0.5
                color: "transparent"
            }
            
            Loader {
                id: bluetoothLoader
                anchors.verticalCenter: parent.verticalCenter
                asynchronous: true
                source: "components/Bluetooth.qml"
                
                Binding {
                    target: bluetoothLoader.item
                    property: "barWindow"
                    value: root.barWindow
                    when: bluetoothLoader.status === Loader.Ready && root.barWindow !== undefined
                    restoreMode: Binding.RestoreBinding
                }
                
                Binding {
                    target: bluetoothLoader.item
                    property: "bluetoothPopup"
                    value: root.bluetoothPopup
                    when: bluetoothLoader.status === Loader.Ready && root.bluetoothPopup !== undefined
                    restoreMode: Binding.RestoreBinding
                }
            }
        }
    }
}