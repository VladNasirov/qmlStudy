import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    color: "black"
    Image {
        id: moomin
        source: "file:///D:/Programming/Study/qml/test/qmlAnimationTest/mu1.png"
        anchors.fill: parent
        opacity: 1
    }

    SequentialAnimation {
        loops:Animation.Infinite
        running: true

        OpacityAnimator {
            target: moomin
            from: 1
            to: 0
            duration: 2000
        }
        OpacityAnimator {
            target: moomin
            from: 0
            to: 1
            duration: 2000
        }
    }
}
