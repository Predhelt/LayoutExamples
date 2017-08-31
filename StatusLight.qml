import QtQuick 2.0

Rectangle {
    id: statusLight
    width: 10; height: width; color: Qt.rgba(0,0.9,1,1); radius: width/2;
    property alias timer: timer
    state: "off"
    states: [
        State {name: "off"
            PropertyChanges {target: statusLight; opacity: 0}
        },
        State {name: "on"
            PropertyChanges {target: statusLight; opacity: 1}
    }]
    Timer {
        id:timer; interval: 1350; running: false; repeat: true
        onTriggered: {
            if(state == "off")
                state = "on"
            else
                state = "off"
            if(swipeView.currentIndex == 0) {
                state = "off"; running = false
            }
        }
    }
    transitions: [
        Transition {
            from: "off"; to: "on";
            NumberAnimation {properties: "opacity"}
    },
        Transition {
            from: "on"; to: "off";
            NumberAnimation {properties: "opacity"}
    }]
}
