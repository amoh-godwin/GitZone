import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3
import "../customs"

Component {

    ColumnLayout {
        anchors.fill: parent

        Settings { id: settings}

        Rectangle {
            Layout.fillWidth: true
            Layout.preferredHeight: 320
            color: "#2f363d"
        }

        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true

            ColumnLayout {
                anchors.top: parent.top
                anchors.topMargin: 48
                anchors.horizontalCenter: parent.horizontalCenter
                spacing: 20

                Label {
                    text: "You don't have any Repositories yet"
                    font: settings.header_light
                    horizontalAlignment: Text.AlignHCenter
                    renderType: Text.NativeRendering
                }

                Button {
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: qsTr('Add a Repository')
                }
            }

        }

    }

}
