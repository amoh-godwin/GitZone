import QtQuick 2.11
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import QtQuick.Window 2.11

import "components"

ApplicationWindow {
    visible: true
    width: Screen.desktopAvailableWidth
    height: Screen.desktopAvailableHeight

    title: qsTr('GitZone | Repositories')

    header: Rectangle {
        height: 48
        color: "#24292e"
    }

    StackView {
        id: view
        anchors.fill: parent
        initialItem: Home {}
    }


}
