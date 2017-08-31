import QtQuick 2.6

Item {
    id: form
    width: 350
    height: 60
    property alias cmdBox: cmdBox
    property alias textInput: textInput

    Rectangle {
        id: rectangle1
        height: 60
        radius: 5
        anchors.fill: parent
        z: -1
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#cfcfcf"
            }

            GradientStop {
                position: 0.272
                color: "#cfcfcf"
            }

            GradientStop {
                position: 1
                color: "#727272"
            }

        }

        Rectangle {
            id: cmdBox
            width: 80
            height: 28
            color: "#fceb5f"
            radius: 0
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.rightMargin: 8
            anchors.leftMargin: 8
            anchors.bottomMargin: 8

            TextInput {
                id: textInput
                x: 0
                y: 0
                text: ""
                clip: false
                font.pixelSize: 21
                anchors.fill: parent
                horizontalAlignment: Text.AlignLeft
                font.family: "Verdana"
            }
        }

        Text {
            id: text1
            text: qsTr("Command line")
            anchors.top: parent.top
            anchors.topMargin: 4
            anchors.left: parent.left
            anchors.leftMargin: 8
            font.pixelSize: 12
        }
    }
}
