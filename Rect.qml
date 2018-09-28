import QtQuick 2.0

Rectangle{
    height:parent.height/2
    width:parent.width/6
    property alias text: txt.text
    color:"pink"
    Text{
        id:txt
        font.pixelSize: parent.height/2
        wrapMode: Text.WordWrap
        font.family: "segoe"
        anchors.centerIn: parent
        color:"white"
    }
}
