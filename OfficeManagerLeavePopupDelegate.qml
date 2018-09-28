import QtQuick 2.9

Row{
    id:view
    width:parent.width ;
    Text{
        width:parent.width/4;
        text:eempid
        font.pixelSize: parent.width * 0.018
        color:"white"
        font.family: "segoe"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    Text{
        width:parent.width/4;
        text:estartday
        color:"white"
        font.pixelSize: parent.width * 0.018
        font.family: "segoe"
        horizontalAlignment: Text.AlignHCenter
        height: parent.height
        verticalAlignment: Text.AlignVCenter
    }
    Text{
        text:eendday
        color:"white"
        width:parent.width/4;
        font.family: "segoe"
        font.pixelSize: parent.width * 0.018
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    Text{
        text:eremark
        color:"white"
        font.pixelSize: parent.width * 0.018
        width:parent.width/4;
        font.family: "segoe"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
}


