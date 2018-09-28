import QtQuick 2.0

Rectangle{
    width: parent.width/14
    height: parent.height/1.22
    radius:50
    anchors.leftMargin: parent.width * 0.0095
    border.color: "blue"
    border.width: 6
    anchors.left: parent.left
    anchors.verticalCenter: parent.verticalCenter
    property alias text: label.text
    Text{
        id:label
        font.pixelSize: Math.min(parent.height/2.5,parent.width/2.5)
        anchors.centerIn: parent
        color:"blue"
    }
}
