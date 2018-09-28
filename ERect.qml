import QtQuick 2.0
Rectangle{
    id:crect1
    width: parent.width
    height: parent.height *0.9
    color:"#1B3C59"
    property alias text:txt.text
    Text{
        id:txt
        font.pixelSize: Math.min(parent.height/2.5,parent.width/8)
        wrapMode: Text.WordWrap
        font.family: "segoe"
        anchors.centerIn: parent
        color:"white"
    }
}
