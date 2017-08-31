import QtQuick 2.6
import QtQuick.Layouts 1.0
import Qt.labs.controls 1.0
import "functions.js" as Functions

ApplicationWindow {
    id: mainWin
    visible: true
    width: 200
    height: 350
    title: qsTr("Hexapod/Rotopod Control by MIKROLAR, Inc.")

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: indicator.currentIndex
        anchors.top: menuIcons.bottom
        Page {
            id: page1
            CommandLine {
                id: clf
                anchors.left:parent.left
                anchors.right:parent.right
                anchors.leftMargin:5
                anchors.rightMargin:5
                anchors.bottom: parent.bottom
                textInput.onAccepted: Functions.sendCommand(textInput.text)
            }
            CmdResp {
                id: crf
                width: clf.width
                anchors.horizontalCenter: clf.horizontalCenter
                anchors.bottom: clf.top
                anchors.bottomMargin: 8
                anchors.top: parent.top
            }
        }
    }
    //Each page can contain a different layout of the different forms
    Page {
        id: pageCyf
        Cycle {
            id: cyf
            visible: false
            startMA.onClicked: {
                Functions.sendCommand("cycle start")
            }
            stopCmdMA.onClicked: {
                Functions.sendCommand("cycle stop")
            }
            stopMA.onClicked: {
                Functions.sendCommand("full stop")
            }
        }
        anchors.left: parent.left
        anchors.leftMargin: 5
        anchors.top: parent.top
        anchors.topMargin: 5
    }

    Connections {
        target: crf
        onCmdAdded: {if(swipeView.currentIndex != 0){indLight.timer.start(); indLight.opacity = 0}}
    }

    header: Flickable {
        id: menuIcons

        height: 42
        anchors.left: parent.left
        anchors.leftMargin: 5
        anchors.right: parent.right
        anchors.rightMargin: 5
        contentWidth: menuRow.width
        flickableDirection: Flickable.HorizontalFlick
        Row {
            id: menuRow
            anchors.left: parent.left
            width: 32 * 13 //width of items * number of items
            Item{
                width: 32; height: 32
                Image {source: "icons/stop-32.png"; width: 32; height: 32}
                MouseArea {width: 32; height: 32; cursorShape: Qt.PointingHandCursor;
                    onClicked: {
                        console.log(qsTr("clicked"))
                    }
                }
            }
            Item{
                width: 32; height: 32
                Image {source: "icons/refresh-32.png"; width: 32; height: 32}
                MouseArea {width: 32; height: 32; cursorShape: Qt.PointingHandCursor;
                    onClicked: {
                        console.log(qsTr("clicked"))
                    }
                }
            }
            Item{
                width: 32; height: 32
                Image {source: "icons/yellowStone.png"; width: 32; height: 32}
                MouseArea {width: 32; height: 32; cursorShape: Qt.PointingHandCursor;
                    onClicked: {
                        console.log(qsTr("clicked"))
                    }
                }
            }
            Item{
                width: 32; height: 32
                Image {source: "icons/go-home-5.png"; width: 32; height: 32}
                MouseArea {width: 32; height: 32; cursorShape: Qt.PointingHandCursor;
                    onClicked: {
                        console.log(qsTr("clicked"))
                    }
                }
            }
            Item{
                width: 32; height: 32
                Image {source: "icons/goto.png"; width: 32; height: 32}
                MouseArea {width: 32; height: 32; cursorShape: Qt.PointingHandCursor;
                    onClicked: {
                        console.log(qsTr("clicked"))
                    }
                }
            }
            Item{
                width: 32; height: 32
                Image {source: "icons/media-playback-start-7.png"; width: 32; height: 32}
                MouseArea {width: 32; height: 32; cursorShape: Qt.PointingHandCursor;
                    onClicked: {
                        console.log(qsTr("clicked"))
                    }
                }
            }
            Item{
                width: 32; height: 32
                Image {source: "icons/media-skip-forward-7.png"; width: 32; height: 32}
                MouseArea {width: 32; height: 32; cursorShape: Qt.PointingHandCursor;
                    onClicked: {
                        console.log(qsTr("clicked"))
                    }
                }
            }
            Item{
                width: 32; height: 32
                Image {source: "icons/accessories-text-editor-2.png"; width: 32; height: 32}
                MouseArea {width: 32; height: 32; cursorShape: Qt.PointingHandCursor;
                    onClicked: {
                        console.log(qsTr("clicked"))
                    }
                }
            }
            Item{
                width: 32; height: 32
                Image {source: "icons/clicknrun.png"; width: 32; height: 32}
                MouseArea {width: 32; height: 32; cursorShape: Qt.PointingHandCursor;
                    onClicked: {
                        console.log(qsTr("clicked"))
                    }
                }
            }
            Item{
                width: 32; height: 32
                Image {source: "icons/system-run-4.png"; width: 32; height: 32}
                MouseArea {width: 32; height: 32; cursorShape: Qt.PointingHandCursor;
                    onClicked: {
                        cyf.visible = true
                        swipeView.addItem(cyf)
                        swipeView.setCurrentIndex(swipeView.count-1)
                    }
                }
            }
            Item{
                width: 32; height: 32
                Image {source: "icons/address-book-new-3.png"; width: 32; height: 32}
                MouseArea {width: 32; height: 32; cursorShape: Qt.PointingHandCursor;
                    onClicked: {
                        console.log(qsTr("clicked"))
                    }
                }
            }
            Item{
                width: 32; height: 32
                Image {source: "icons/input-gaming-3.png"; width: 32; height: 32}
                MouseArea {width: 32; height: 32; cursorShape: Qt.PointingHandCursor;
                    onClicked: {
                        console.log(qsTr("clicked"))
                    }
                }
            }
            Item{
                width: 32; height: 32
                Image {source: "icons/command-history.png"; width: 32; height: 32}
                MouseArea {width: 32; height: 32; cursorShape: Qt.PointingHandCursor;
                    onClicked: {
                        console.log(qsTr("clicked"))
                    }
                }
            }
        }
        Component.onCompleted: {
            flick(500, 0)
        }
    }

    footer: Item {
        width: indicator.width
        height: indicator.height
        PageIndicator {
            id: indicator
            count: swipeView.count
            currentIndex: swipeView.currentIndex
        }
        StatusLight {
            id: indLight
            x: 5; y: 5;
        }
    }
    Component.onDestruction: {

    }
}
