import QtQuick 2.0

Rectangle{
    id:r
    width: parent.width/1.1
    height: parent.height/9
    color:"white"
   // border.color: "blue"
    property alias text: txt.text
    radius: 30
    opacity: 0.6
    anchors.horizontalCenter: parent.horizontalCenter
    Text{
        id:txt
        wrapMode: Text.WordWrap
        color:"#000000"
        font.family: "segoe"
        font.pixelSize:Math.min(parent.height/2.5,parent.width/6)
        anchors.centerIn: parent
    }
    MouseArea{
        anchors.fill: parent
        hoverEnabled: true
        onEntered:r.opacity=0.6
        onExited: r.opacity=1
    }
}
