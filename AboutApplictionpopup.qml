import QtQuick.Controls 2.3 as N
import QtQuick.Controls 1.4 as O
import QtQuick.Controls.Styles 1.4
import QtQuick 2.9

N.Popup{
    id:aboutpopup
    height: parent.height/2
    width: parent.width/3
    y: parent.height/4-height/4
    x:parent.width/2-width/2.5
    modal:true
    closePolicy: N.Popup.CloseOnEscape | N.Popup.CloseOnPressOutside

    Rectangle {
        anchors.fill: parent
        color:"#404B69"
        Column{
            anchors.fill: parent
            spacing: parent.height * 0.01
            Row{
                height: parent.height* 0.06
                width: parent.width
                Text{
                    text:"Version :"
                    font.pixelSize: Math.min(parent.height,parent.width * 0.1)
                }
                Text{
                    text:" 1.1"
                    font.pixelSize: Math.min(parent.height,parent.width * 0.1)
                }
            }
            Row{
                height: parent.height* 0.06
                width: parent.width
                Text{
                    text:"Qt version :"
                    font.pixelSize: Math.min(parent.height,parent.width * 0.1)
                }
                Text{
                    text:" 5.11 or higher"
                    font.pixelSize: Math.min(parent.height,parent.width * 0.1)
                }
            }
            Row{
                height: parent.height* 0.06
                width: parent.width
                Text{
                    text:"Platform supported :"
                    font.pixelSize: Math.min(parent.height,parent.width * 0.1)
                }
                Text{
                    text:"Windows,Ubuntu,Android"
                    font.pixelSize: Math.min(parent.height,parent.width * 0.1)
                }
            }
        }
    }
}



