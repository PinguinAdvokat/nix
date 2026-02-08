pragma ComponentBehavior: Bound
import QtQuick
import QtQuick.Layouts
import qs.Services

import "../Data" as Dat

RowLayout {
    id: root
    spacing: 1

    // Drawer state
    property bool isOpen: false

    // We create the TrayMenu object here, but it starts invisible.
    TrayMenu {
        id: sharedMenu
        visible: false

        onVisibleChanged: {
            if (visible)
                TrayService.registerActiveMenu(sharedMenu);
        }
    }

    Item {
        id: drawer

        clip: true

        Layout.preferredHeight: 30
        Layout.preferredWidth: root.isOpen ? (iconsRow.implicitWidth + 5) : 0

        Behavior on Layout.preferredWidth {
            NumberAnimation {
                duration: 150
                easing.type: Easing.OutExpo
            }
        }

        opacity: root.isOpen ? 1 : 0
        Behavior on opacity {
            NumberAnimation {
                duration: 150
            }
        }

        // Drawer content
        Row {
            id: iconsRow
            spacing: 3
            anchors.verticalCenter: parent.verticalCenter

            anchors.right: parent.right
            anchors.rightMargin: root.isOpen ? 5 : -iconsRow.implicitWidth

            Behavior on anchors.rightMargin {
                NumberAnimation {
                    duration: 150
                    easing.type: Easing.OutExpo
                }
            }

            Repeater {
                model: TrayService.items

                delegate: Rectangle {
                    id: trayDelegate
                    required property var modelData

                    implicitWidth: 24
                    implicitHeight: 24
                    radius: width / 2
                    color: mouseArea.containsMouse ? Dat.Colors.colModuleBg : "transparent"

                    // Primary icon (theme name, file path, or pixmap URL)
                    Image {
                        id: trayIcon
                        anchors.centerIn: parent
                        width: 18
                        height: 18
                        source: TrayService.getIconSource(trayDelegate.modelData.icon)
                        fillMode: Image.PreserveAspectFit
                        asynchronous: true
                        sourceSize: Qt.size(32, 32)
                        smooth: true
                        visible: status === Image.Ready
                    }

                    // Fallback when primary icon fails (e.g. pixmap-based icons from nm-applet)
                    Image {
                        anchors.centerIn: parent
                        width: 18
                        height: 18
                        source: "image://icon/application-default-icon"
                        fillMode: Image.PreserveAspectFit
                        sourceSize: Qt.size(32, 32)
                        smooth: true
                        visible: trayIcon.status === Image.Error
                    }

                    MouseArea {
                        id: mouseArea
                        anchors.fill: parent
                        hoverEnabled: true
                        acceptedButtons: Qt.LeftButton | Qt.RightButton
                        cursorShape: Qt.PointingHandCursor

                        onClicked: mouse => {
                            if (mouse.button === Qt.LeftButton) {
                                trayDelegate.modelData.activate();
                                sharedMenu.close();
                            } else if (mouse.button === Qt.RightButton) {
                                if (trayDelegate.modelData.hasMenu) {
                                    // 1. Gets the absolute position of the icon on screen
                                    var globalPos = trayDelegate.mapToGlobal(0, trayDelegate.height);

                                    // 2. Configures the shared menu
                                    sharedMenu.rootMenuHandle = trayDelegate.modelData.menu;
                                    sharedMenu.anchorX = globalPos.x - 1200;
                                    sharedMenu.anchorY = globalPos.y + 5;

                                    // 3. Opens the menu
                                    sharedMenu.open();
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    // Toggle button
    Rectangle {
        id: toggleBtn

        visible: TrayService.hasItems
        Layout.preferredWidth: 24
        Layout.preferredHeight: 24
        radius: width / 2

        color: (toggleMouse.containsMouse) ? Dat.Colors.colModuleBg : "transparent"

        Behavior on color {
            ColorAnimation {
                duration: 150
            }
        }

        // Arrow Icon
        Text {
            anchors.centerIn: parent
            text: "󰅁"
            font.family: Dat.Fonts.fontFamily
            font.pixelSize: Dat.Fonts.fontSize
            color: Dat.Colors.colText

            scale: root.isOpen ? -1 : 1

            Behavior on scale {
                NumberAnimation {
                    duration: 150
                    easing.type: Easing.OutBack
                }
            }
        }

        MouseArea {
            id: toggleMouse
            anchors.fill: parent
            hoverEnabled: true
            cursorShape: Qt.PointingHandCursor
            onClicked: root.isOpen = !root.isOpen
        }
    }
}
