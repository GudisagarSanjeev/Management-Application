import QtQuick 2.9

Row{
    id:view
    width:parent.width;
    height: parent.height/20

    Text{
        width:parent.width/10;
        height: parent.height
        font.pixelSize: parent.height/3
        verticalAlignment: Text.AlignVCenter
        text:"Image"
        font.bold: true
        font.family: "segoe"
        horizontalAlignment: Text.AlignHCenter
    }
    Text{
        width:parent.width/10;
        height: parent.height
        font.pixelSize: parent.height/3
        verticalAlignment: Text.AlignVCenter
        text:"Employee id"
        font.bold: true
        font.family: "segoe"
        horizontalAlignment: Text.AlignHCenter
    }
    Text{
        width:parent.width/10;
        height: parent.height
        font.pixelSize: parent.height/3
        verticalAlignment: Text.AlignVCenter
        text:"First name"
        font.bold: true
        font.family: "segoe"
        horizontalAlignment: Text.AlignHCenter
    }

    Text{
        width:parent.width/10;
        height: parent.height
        font.pixelSize: parent.height/3
        text:"Last name"
        font.bold: true
        font.family: "segoe"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    //    Text{
    //        text:"Father name"
    //         width:parent.width/10;
    //        height: parent.height
    //                font.pixelSize: parent.height/3
    //        font.family: "segoe"
    //        font.bold: true
    //        horizontalAlignment: Text.AlignHCenter
    //        verticalAlignment: Text.AlignVCenter
    //    }
    Text{
        text:"Address1"
        width:parent.width/10;
        height: parent.height
        font.pixelSize: parent.height/3
        font.family: "segoe"
        font.bold: true
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    //    Text{
    //        text:"Address2"
    //      width:parent.width/10;
    //        height: parent.height
    //                font.pixelSize: parent.height/3
    //        font.family: "segoe"
    //        font.bold: true
    //        horizontalAlignment: Text.AlignHCenter
    //        verticalAlignment: Text.AlignVCenter
    //    }
    Text{
        text:"Location"
        width:parent.width/10;
        height: parent.height
        font.pixelSize: parent.height/3
        font.family: "segoe"
        font.bold: true
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    //    Text{
    //        text:"Zip code"
    //         width:parent.width/10;
    //        height: parent.height
    //                font.pixelSize: parent.height/3
    //        font.family: "segoe"
    //        font.bold: true
    //        horizontalAlignment: Text.AlignHCenter
    //        verticalAlignment: Text.AlignVCenter
    //    }
    Text{
        text:"State"
        width:parent.width/10;
        font.pixelSize: parent.height/3
        height: parent.height
        font.family: "segoe"
        font.bold: true
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    Text{
        text:"Email"
        width:parent.width/10;
        font.pixelSize: parent.height/3
        height: parent.height
        font.family: "segoe"
        font.bold: true
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    Text{
        text:"Phone"
        width:parent.width/10;
        font.pixelSize: parent.height/3
        height: parent.height
        font.family: "segoe"
        font.bold: true
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    Text{
        text:"Emergency"
        width:parent.width/10;
        font.pixelSize: parent.height/3
        height: parent.height
        font.family: "segoe"
        font.bold: true
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
}

