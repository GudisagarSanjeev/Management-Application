import QtQuick 2.9

Row{
    id:view
    width:parent.width;
    height: parent.height/20
    Text{
         width:parent.width/8;
        height: parent.height
        font.pixelSize: parent.height/3
        verticalAlignment: Text.AlignVCenter
        text:"Emplyoyee id"
        font.bold: true
        font.family: "segoe"
        horizontalAlignment: Text.AlignHCenter
    }
    Text{
         width:parent.width/6;
        height: parent.height
        font.pixelSize: parent.height/3
        verticalAlignment: Text.AlignVCenter
        text:"Emplyoyee name"
        font.bold: true
        font.family: "segoe"
        horizontalAlignment: Text.AlignHCenter
    }
    Text{
         width:parent.width/10;
        height: parent.height
        font.pixelSize: parent.height/3
        verticalAlignment: Text.AlignVCenter
        text:"No of Days"
        font.bold: true
        font.family: "segoe"
        horizontalAlignment: Text.AlignHCenter
    }

    Text{
         width:parent.width/4;
        height: parent.height
        font.pixelSize: parent.height/3
        text:"Days"
        font.bold: true
        font.family: "segoe"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    Text{
        text:"Remarks"
         width:parent.width/4;
        height: parent.height
        font.pixelSize: parent.height/3
        font.family: "segoe"
        font.bold: true
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    Text{
        text:"Action"
         width:parent.width/8;
        height: parent.height
        font.pixelSize: parent.height/3
        font.family: "segoe"
        font.bold: true
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

}

