import QtQuick 2.0

Rectangle{
    id:header
    width: parent.width
    height: parent.height/13
    property alias title: label.text
    color:"#283149"
    Image{
        id:about
        anchors.left: parent.left
        anchors.leftMargin: 15
        anchors.verticalCenter: parent.verticalCenter
        width: parent.width * 0.025
        height: parent.height/1.8
        source: "qrc:/Images/information.png"
        MouseArea{
            anchors.fill:parent
            onClicked: {
                popup.open()
            }

        }
    }
    Text{
        id:label
        text:"People Management"
        font.pixelSize: parent.height/2
        anchors.centerIn: parent
        font.family: "segoe"
        color:"white"
    }
}
