import QtQuick 2.0
import QtQuick.Controls 2.3 as N
import QtQuick.Dialogs 1.3
N.Dialog{
    id: messageDialog
    height: parent.height/3
    width: parent.width/3.5
    y:  parent.height/4-height/4
    x:parent.width/2.5-width/2.5
    modal: true
    title:"Alert Box"
    standardButtons: Dialog.Ok | Dialog.Cancel

    property alias text: txt.text
    Rectangle{
        height: parent.height
        width: parent.width
        color:"#404B69"
        Text{
            id:txt
            color:"white"
            font.family: "segoe"
            font.pixelSize:parent.height/8
            anchors.centerIn: parent
        }
    }
}
