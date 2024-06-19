import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Item {
        id: root
        rotation: 0
        anchors.centerIn: parent

        Rectangle {
            id: yellowRect
            width: 300
            height: 300
            radius: width
            color: "yellow"
            opacity: 0.5
            border.width: 2
            border.color: "black"
            anchors.centerIn: parent

            transform: Translate {
                y:100
                x:-100
            }
        }

        Rectangle {
            id: redRect
            width: 300
            height: 300
            radius: width
            color: "red"
            opacity: 0.5
            border.width: 2
            border.color: "black"
            anchors.centerIn: parent

            transform: Translate {
                y:100
                x:100
            }
        }

        Rectangle {
            id: blueRect
            width: 300
            height: 300
            radius: width
            color: "blue"
            opacity: 0.5
            border.width: 2
            border.color: "black"
            anchors.centerIn: parent

            transform: Translate {
                y:-100
            }
        }

        Rectangle {
            id: centerArea
            width: 50
            height: 50
            radius: width
            color: "white"
            opacity: 1
            border.width: 2
            border.color: "black"
            anchors.centerIn: parent
            Rectangle {
                id: dot
                width: 5
                height: 5
                radius: width
                color: "gray"
                opacity: 1
                border.width: 2
                border.color: "black"
                anchors.centerIn: parent
            }
        }
        RotationAnimation {
            target: root
            from:360
            to:0
            duration:5000
            direction: Counterclockwise
            loops: Animation.Infinite
            running: true
        }
    }
}
