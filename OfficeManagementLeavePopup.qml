import QtQuick 2.0
import QtQuick.Controls 2.2
import QtQuick.Window 2.11
Popup {
    id: popupD

    x:parent.width/2.5-width/2.5
    y:  parent.height/4-height/4

//    width:600
//    height: 400
        width: parent.width * 0.7
        height: parent.height * 0.5


    modal: true
    focus: true
    closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent


    OfficeManagerLeavePopupHeader{
        id:header
    }
    Rectangle {
        id:rect
        height: parent.height*0.80
        width: parent.width
        color: "gray"
        anchors.top: header.bottom
        ListView{
            height: parent.height
            width: parent.width
            spacing: parent.height * 0.004
            model:filter
            delegate:OfficeManagerLeavePopupDelegate{}
        }
    }

    Rectangle{
        id:rect1
        anchors.top:rect.bottom
        width:parent.width
        height: parent.height/10
        Button{
            id:ok
            width:parent.width /8
            height: parent.height/1.5
            text:"Ok"
            anchors.centerIn: parent
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    popupD.close()
                }
            }
        }
    }
}
