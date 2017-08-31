import QtQuick 2.6

CycleForm {
    id: cyf
    states: [
        State {
            name: "horizontalState"
            when: parent.parent.width >= 192
            PropertyChanges {
                target: background
                width: 192
                height: 64
            }
        },
        State {
            name: "verticalState"
            when:  parent.parent.width < 192
            PropertyChanges {
                target: background
                width: 64
                height: 192
            }
        }
    ]
    startMA.cursorShape: Qt.PointingHandCursor
    stopCmdMA.cursorShape: Qt.PointingHandCursor
    stopMA.cursorShape: Qt.PointingHandCursor
}
