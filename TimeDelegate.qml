import QtQuick 2.9

Row{
    id:view
    width:parent.width ;
    Text{
        width:parent.width/11;
        text:resourcename
        font.pixelSize: parent.width * 0.011
        color:"white"
        font.family: "segoe"        
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    Text{
        width:parent.width/11;
        text:company;
        color:"white"
        font.pixelSize: parent.width * 0.011
        font.family: "segoe"
        horizontalAlignment: Text.AlignHCenter
        height: parent.height
        verticalAlignment: Text.AlignVCenter
    }
    Text{
        text:reportingmngr
        color:"white"
        font.pixelSize: parent.width * 0.011
        width:parent.width/11;
        font.family: "segoe"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    Text{
        text:pmo;
        color:"white"
        width:parent.width/11;
        font.family: "segoe"
        font.pixelSize: parent.width * 0.011
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    Text{
        text:ponumber
        color:"white"
        font.pixelSize: parent.width * 0.011
        width:parent.width/11;
        font.family: "segoe"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    Text{
        text:lots
        color:"white"
        width:parent.width/11;
        font.pixelSize: parent.width * 0.011
        font.family: "segoe"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    Text{
        text:startdate
        color:"white"
        font.pixelSize: parent.width * 0.011
        width:parent.width/11;
        font.family: "segoe"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    Text{
        text:enddate
        color:"white"
        font.pixelSize: parent.width * 0.011
        width:parent.width/11;
        font.family: "segoe"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    Text{
        text:clotsusage
        width:parent.width/11;
        color:"white"
        font.pixelSize: parent.width * 0.011
        font.family: "segoe"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    Text{
        text:rem
        width:parent.width/11;
        font.family: "segoe"
        font.pixelSize: parent.width * 0.011
        color:"white"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    Text{
        text:rempoamt
        width:parent.width/11;
        font.family: "segoe"
        font.pixelSize: parent.width * 0.011
        color:"white"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
}


