import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        anchors.fill: parent
        color: "black"
        focus: true

        Rectangle {
            width: 60
            height: 60
            color: "yellow"
            radius: width


            Behavior on x { SmoothedAnimation {velocity: 50} }
            Behavior on y { SmoothedAnimation {velocity: 50} }
            x:rect1.x-5
            y:rect1.y-5
        }

        Rectangle {
            id: rect1
            width: 50
            height: 50
            color: "red"
            radius: width
            // x: (parent.width/2) - (width/2)
            // y: (parent.height/2) - (height/2)
            x: mise.mouseX
            y: mise.mouseY
            Behavior on x { SmoothedAnimation {velocity: 100} }
            Behavior on y { SmoothedAnimation {velocity: 100} }
        }

        Keys.onRightPressed: rect1.x=rect1.x+20
        Keys.onLeftPressed: rect1.x=rect1.x-20
        Keys.onUpPressed: rect1.y=rect1.y-20
        Keys.onDownPressed: rect1.y=rect1.y+20
        MouseArea {
            id: mise
            anchors.fill: parent
        }
    }
}
