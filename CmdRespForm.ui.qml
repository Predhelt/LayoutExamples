import QtQuick 2.6

Item {
    width: 400
    height: 420
    property alias responseArea: responseArea
    property alias responses: responses
    property alias statusLE: statusLE

    Rectangle {
        id: rectangle1
        radius: 5
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#d4d4d4"
            }

            GradientStop {
                position: 0.075
                color: "#d4d4d4"
            }

            GradientStop {
                position: 1
                color: "#828282"
            }

        }
        anchors.fill: parent

        Rectangle {
            id: rect1
            height: 351
            color: "#ffffff"
            radius: 3
            border.width: 0
            anchors.bottom: rect2.top
            anchors.bottomMargin: 6
            anchors.right: parent.right
            anchors.rightMargin: 8
            anchors.left: parent.left
            anchors.leftMargin: 8
            anchors.top: parent.top
            anchors.topMargin: 28

            Flickable {
                id: responseArea
                x: 0
                y: 0
                contentHeight: responses.contentHeight
                contentWidth: responses.contentWidth
                clip: true
                flickableDirection: Flickable.AutoFlickDirection
                anchors.fill: parent

                TextEdit {
                    id: responses
                    x: 0
                    y: 0
                    text: qsTr("")
                    activeFocusOnPress: false
                    readOnly: true
                    clip: false
                    textFormat: Text.RichText
                    anchors.fill: parent
                    font.family: "Verdana"
                    font.pixelSize: 17
                }
            }
        }

        Rectangle {
            id: rect2
            y: 163
            width: 40
            height: 24
            color: "#ffffff"
            radius: 2
            border.width: 0
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 8
            anchors.right: parent.right
            anchors.rightMargin: 8
            anchors.left: parent.left
            anchors.leftMargin: 8

            Flickable {
                id: flickable2
                contentWidth: statusLE.contentWidth
                flickableDirection: Flickable.HorizontalFlick
                clip: true
                anchors.fill: parent

                TextInput {
                    id: statusLE
                    x: 0
                    y: 0
                    height: 26
                    text: ""
                    clip: false
                    anchors.fill: parent
                    font.family: "Verdana"
                    font.pixelSize: 17
                }
            }
        }

        Text {
            id: text1
            text: qsTr("Command Responses")
            anchors.top: parent.top
            anchors.topMargin: 8
            anchors.left: parent.left
            anchors.leftMargin: 8
            font.pixelSize: 12
        }

    }
}
