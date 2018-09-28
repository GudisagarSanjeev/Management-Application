import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Dialogs 1.3
Rectangle {
    anchors.fill: parent
    color: "#D9FAFF"
    OfficeManagerViewHeader{
        id:header
    }

    Rectangle {
        height: parent.height*15/16
        width: parent.width
        color: "gray"
        anchors.top: header.bottom

        ListView{
            height: parent.height
            width: parent.width            
            spacing: parent.height * 0.008
            model:emp
            delegate:OfficeManagerDelegate{}
        }
    }
}


