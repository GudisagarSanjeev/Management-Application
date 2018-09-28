import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.3

Window {
    //    minimumHeight: 700
    //    minimumWidth: 800
    visible: true
    visibility: "Maximized"
    //visibility: Window.FullScreen
    title: qsTr("Management")
    Loader{
        id:mload
    }
    Rectangle {
        id:mrect
        color:"#212121"
        anchors.fill: parent

        Rectangle{
            id:loginrect
            width: Math.min(parent.width * 0.98, parent.height * 0.5)
            height: Math.min(parent.width/2.2, parent.height/2.95)
            color:"#0D7377"

            anchors.centerIn: parent
            Column{
                anchors.fill: parent
                spacing: 5
                Label{
                    text:"LOG IN"
                    font.bold: true
                    font.family: "segoe"
                    font.pixelSize: parent.width/20
                    verticalAlignment: Text.AlignVCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    height: parent.height/3
                }
                TextField{
                    placeholderText: "Username"
                    font.family: "segoe"
                    font.pixelSize: 14
                    font.bold: true
                    width: Math.max(parent.width/1.5, parent.height/6)
                    height: parent.height/7
                    anchors.horizontalCenter: parent.horizontalCenter

                }
                TextField{
                    placeholderText: "Password"
                    font.family: "segoe"
                    font.pixelSize: 14
                    font.bold: true
                    //                font.italic: true
                    echoMode:TextInput.Password
                    width: Math.max(parent.width/1.5, parent.height/6)
                    height: parent.height/7
                    anchors.horizontalCenter: parent.horizontalCenter
                }
                Rectangle{
                    id:loginb
                    width: Math.max(parent.width/1.5, parent.height/6)
                    height: parent.height/7
                    anchors.horizontalCenter: parent.horizontalCenter
                    color:"#14FFFC"
                    Text {
                        text:"Log In"
                        font.pixelSize: parent.height/2.5
                        anchors.centerIn: parent
                        font.family: "segoe"
                    }

                    MouseArea{
                        anchors.fill: parent
                        hoverEnabled: true
                        onEntered: loginb.opacity=0.5
                        onExited: loginb.opacity=1
                        onClicked: {
                            mload.source="Homepage.qml"
                            mrect.visible=false
                        }
                    }
                }
            }
        }
    }
}
