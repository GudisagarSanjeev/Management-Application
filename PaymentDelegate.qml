import QtQuick 2.9

Row{
    id:view
    width:parent.width ;

    Text{
        width:parent.width/10 ;
        text:ivno
        font.family: "segoe"
        font.pixelSize: parent.width * 0.01
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    Text{
        width:parent.width/10 ;
        text:date;
        font.pixelSize: parent.width * 0.01
        font.family: "segoe"
        horizontalAlignment: Text.AlignHCenter
        height: parent.height
        verticalAlignment: Text.AlignVCenter
    }
    Text{
        text:amt
        width:parent.width/10 ;
        font.family: "segoe"
        font.pixelSize: parent.width * 0.01
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    Text{
        text:company
        width:parent.width/10 ;
        font.family: "segoe"
        font.pixelSize: parent.width * 0.01
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    Text{
        text:sgst;
        width:parent.width/10 ;
        font.family: "segoe"
        font.pixelSize: parent.width * 0.01
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    Text{
        text:cgst
        width:parent.width/10 ;
        font.family: "segoe"
        font.pixelSize: parent.width * 0.01
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    Text{
        text:igst
        width:parent.width/10 ;
        font.family: "segoe"
        font.pixelSize: parent.width * 0.01
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    Text{
        text:taxrs
        width:parent.width/10 ;
        font.pixelSize: parent.width * 0.01
        font.family: "segoe"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    Text{
        text:totalamt
        width:parent.width/10 ;
        font.family: "segoe"
        font.pixelSize: parent.width * 0.01
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    Text{
        text:tds
        width:parent.width/10 ;
        font.family: "segoe"
        font.pixelSize: parent.width * 0.01
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
}


