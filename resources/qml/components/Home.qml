import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3
import "../customs"

Component {

    Rectangle {
        anchors.fill: parent

        ColumnLayout {
            width: parent.width
            height: parent.height

            Settings { id: settings }

            Rectangle {
                Layout.fillWidth: true
                Layout.preferredHeight: 320
                color: "#2f363d"

                Label {
                    anchors.centerIn: parent
                    wrapMode: Text.WordWrap
                    font: settings.desc_light
                    text: qsTr('Your Git folder has not been configured, configure it now')
                    renderType: Text.NativeRendering
                    color: "#60ffffff"
                }

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
                        Layout.alignment: Layout.Center
                        text: qsTr('Add a Repository')
                    }
                }

            }

        }
    }

}
