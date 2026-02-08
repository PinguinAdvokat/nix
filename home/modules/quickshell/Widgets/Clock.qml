import QtQuick
import qs.Services
import QtQuick.Layouts

import "../Data/" as Dat
import "../Generics/" as Gen

Rectangle {
    property int padding: 16

    Layout.fillHeight: true
    implicitWidth: clock.width + padding
    radius: 9
    color: Dat.Colors.colModuleBg
    Text {
        id: clock
        anchors.centerIn: parent
        text: TimeService.format("hh:mm")

        font.family: Dat.Font.fontFamily
        font.pixelSize: Dat.Font.fontSize
        font.bold: true

        color: Dat.Colors.colText
    }
}