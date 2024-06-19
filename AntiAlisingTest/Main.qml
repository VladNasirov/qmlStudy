import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Row {
        anchors.centerIn: parent
        spacing: 20

        Rectangle {
            width: 200
            height: 200
            border.color: "red"

            border.width: 20
            radius: width

            Text {
                anchors.centerIn: parent
                text: qsTr("Turn on")
            }
        }
        Rectangle {
            width: 200
            height: 200
            border.color: "red"

            border.width: 20
            radius: width
            antialiasing: false
            Text {
                anchors.centerIn: parent
                text: qsTr("Turn off")
            }
        }
    }
}
