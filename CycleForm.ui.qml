import QtQuick 2.6

Item {
    id: item1
    height: 85
    property alias background: background
    property alias startBtn: startBtn
    property alias stopCmdBtn: stopCmdBtn
    property alias stopBtn: stopBtn
    property alias stopMA: stopMA
    property alias stopCmdMA: stopCmdMA
    property alias startMA: startMA
    width: 202

    Rectangle {
        id: background
        x: 5
        y: 20
        width: 192
        height: 65
        radius: 5
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#dcdfe3"
            }

            GradientStop {
                position: 1
                color: "#969696"
            }
        }
        border.color: "#545454"
        border.width: 0

        Rectangle {
            id: startBtn
            x: 0
            y: 0
            width: 64
            height: 64
            radius: 32
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            gradient: Gradient {
                GradientStop {
                    position: 0
                    color: "#28fb00"
                }

                GradientStop {
                    position: 1
                    color: "#43ad00"
                }
            }

            Text {
                id: text1
                text: qsTr("Start Command")
                wrapMode: Text.WordWrap
                verticalAlignment: Text.AlignVCenter
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 12
            }

            MouseArea {
                id: startMA
                z: 1
                anchors.rightMargin: 0
                anchors.bottomMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 0
                anchors.fill: parent
            }
        }

        Rectangle {
            id: stopCmdBtn
            x: 64
            y: 0
            width: 64
            height: 64
            radius: 32
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            gradient: Gradient {
                GradientStop {
                    position: 0
                    color: "#ff8100"
                }

                GradientStop {
                    position: 1
                    color: "#c46300"
                }
            }


            Text {
                id: text2
                text: qsTr("Stop Command")
                wrapMode: Text.WordWrap
                anchors.fill: parent
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 12
            }

            MouseArea {
                id: stopCmdMA
                x: 120
                y: 0
                anchors.fill: parent
            }
        }

        Rectangle {
            id: stopBtn
            width: 64
            height: 64
            radius: 32
            border.width: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.top: parent.top
            anchors.topMargin: 0
            gradient: Gradient {
                GradientStop {
                    position: 0
                    color: "#ff0909"
                }

                GradientStop {
                    position: 1
                    color: "#c00000"
                }

            }


            Text {
                id: text3
                text: qsTr("Stop")
                verticalAlignment: Text.AlignVCenter
                anchors.fill: parent
                z: 0
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 12
            }
            MouseArea {
                id: stopMA
                x: 240
                y: 0
                anchors.fill: parent
            }
        }



    }

    Rectangle {
        id: windowBar
        height: 37
        radius: 5
        anchors.top: background.top
        anchors.topMargin: -19
        anchors.right: background.right
        anchors.rightMargin: 0
        anchors.left: background.left
        anchors.leftMargin: 0
        z: -1
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#dddddd"
            }

            GradientStop {
                position: 1
                color: "#dcdfe3"
            }
        }
        border.width: 0

        Text {
            id: text4
            text: qsTr("Cycle")
            anchors.top: parent.top
            anchors.topMargin: 3
            anchors.left: parent.left
            anchors.leftMargin: 8
            font.pixelSize: 12
        }
    }




}
