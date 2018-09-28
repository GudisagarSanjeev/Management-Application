import QtQuick 2.9

Row{
    id:view
    width:parent.width;
    height: parent.height/20

    Text{
     width:parent.width/11;
        height: parent.height
        font.pixelSize: parent.height/3
        verticalAlignment: Text.AlignVCenter
        text:"Employee id"
        font.bold: true
        font.family: "segoe"
        horizontalAlignment: Text.AlignHCenter
    }

    Text{
     width:parent.width/11;
        height: parent.height
        font.pixelSize: parent.height/3
        text:"Company"
        font.bold: true
        font.family: "segoe"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    Text{
        text:"Reporting Mgr"
     width:parent.width/11;
        height: parent.height
        font.pixelSize: parent.height/3
        font.family: "segoe"
        font.bold: true
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    Text{
        text:"PMO"
     width:parent.width/11;
        height: parent.height
        font.pixelSize: parent.height/3
        font.family: "segoe"
        font.bold: true
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    Text{
        text:"PO Number"
     width:parent.width/11;
        height: parent.height
        font.pixelSize: parent.height/3
        font.family: "segoe"
        font.bold: true
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    Text{
        text:"Lots"
     width:parent.width/11;
        height: parent.height
        font.pixelSize: parent.height/3
        font.family: "segoe"
        font.bold: true
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    Text{
        text:"Start"
     width:parent.width/11;
        height: parent.height
        font.pixelSize: parent.height/3
        font.family: "segoe"
        font.bold: true
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    Text{
        text:"End"
     width:parent.width/11;
        font.pixelSize: parent.height/3
        height: parent.height
        font.family: "segoe"
        font.bold: true
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    Text{
        text:"Lots Usage"
     width:parent.width/11;
        font.pixelSize: parent.height/3
        height: parent.height
        font.family: "segoe"
        font.bold: true
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    Text{
        text:"Remaining"
     width:parent.width/11;
        font.pixelSize: parent.height/3
        height: parent.height
        font.family: "segoe"
        font.bold: true
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    Text{
        text:"Rem PoAmt"
     width:parent.width/11;
        font.pixelSize: parent.height/3
        height: parent.height
        font.family: "segoe"
        font.bold: true
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
}

