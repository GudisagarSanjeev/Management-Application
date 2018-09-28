import QtQuick 2.9

Row{
    id:view
    width:parent.width;
    height: parent.height/16

    Text{
        width:parent.width/9 ;
        height: parent.height
        font.bold: true
        font.pixelSize: parent.height/3
        verticalAlignment: Text.AlignVCenter
        text:"Invoice Number"
        font.family: "segoe"
        horizontalAlignment: Text.AlignHCenter
    }

    Text{
        width:parent.width/9 ;
        height: parent.height
        font.bold: true
        font.pixelSize: parent.height/3
        text:"Date"
        font.family: "segoe"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    Text{
        text:"Amount"
        font.bold: true
        width:parent.width/9 ;
        height: parent.height
        font.pixelSize: parent.height/3
        font.family: "segoe"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    Text{
        text:"Company"
        font.bold: true
        width:parent.width/9 ;
        height: parent.height
        font.pixelSize: parent.height/3
        font.family: "segoe"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    Text{
        text:"Tax Rs"
        font.bold: true
        width:parent.width/9 ;
        height: parent.height
        font.pixelSize: parent.height/3
        font.family: "segoe"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    Text{
        text:"Total amount"
        font.bold: true
        width:parent.width/9 ;
        font.pixelSize: parent.height/3
        height: parent.height
        font.family: "segoe"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    Text{
        text:"TDS Sale"
        font.bold: true
        width:parent.width/9 ;
        font.pixelSize: parent.height/3
        height: parent.height
        font.family: "segoe"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    Text{
        text:"TDS Invoice"
        font.bold: true
        width:parent.width/9 ;
        font.pixelSize: parent.height/3
        height: parent.height
        font.family: "segoe"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    Text{
        text:"Status"
        font.bold: true
        width:parent.width/9 ;
        font.pixelSize: parent.height/3
        height: parent.height
        font.family: "segoe"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
}

