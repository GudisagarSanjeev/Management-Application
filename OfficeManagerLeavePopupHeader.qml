import QtQuick 2.9

Row{
    id:view
    width:parent.width;
    height: parent.height/10
//    Text{
//        width:parent.width/4;
//        height: parent.height
//        font.pixelSize: parent.height/3
//        verticalAlignment: Text.AlignVCenter
//        text:"Emp Id"
//        font.bold: true
//        font.family: "segoe"
//        horizontalAlignment: Text.AlignHCenter
//    }
    Text{
        width:parent.width/4;
        height: parent.height
        font.pixelSize: parent.height/3
        verticalAlignment: Text.AlignVCenter
        text:"Emp Id"
        font.bold: true
        font.family: "segoe"
        horizontalAlignment: Text.AlignHCenter
    }
    Text{
        width:parent.width/4;
        height: parent.height
        font.pixelSize: parent.height/3
        verticalAlignment: Text.AlignVCenter
        text:"Start date"
        font.bold: true
        font.family: "segoe"
        horizontalAlignment: Text.AlignHCenter
    }

    Text{
        width:parent.width/4;
        height: parent.height
        font.pixelSize: parent.height/3
        text:"End date"
        font.bold: true
        font.family: "segoe"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    Text{
        text:"Remark"
        width:parent.width/4;
        height: parent.height
        font.pixelSize: parent.height/3
        font.family: "segoe"
        font.bold: true
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
}


