import QtQuick 2.9
import QtQuick.Controls 2.0
Row{
    id:view
    width:parent.width ;

    Text{
       width:parent.width/9
        text:ivno
        font.family: "segoe"
        font.pixelSize: parent.width * 0.01
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    Text{
       width:parent.width/9
        text:date;
        font.pixelSize: parent.width * 0.01
        font.family: "segoe"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    Text{
        text:amt
       width:parent.width/9
        font.family: "segoe"
        font.pixelSize: parent.width * 0.01
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    Text{
        text:company
       width:parent.width/9
        font.family: "segoe"
        font.pixelSize: parent.width * 0.01
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    Text{
        text:taxrs
       width:parent.width/9
        font.pixelSize: parent.width * 0.01
        font.family: "segoe"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    Text{
        text:tds
       width:parent.width/9
        font.family: "segoe"
        font.pixelSize: parent.width * 0.01
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    Text{
        text:tdssale
       width:parent.width/9
        font.family: "segoe"
        font.pixelSize: parent.width * 0.01
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    Text{
        text:tdsinvoice
       width:parent.width/9
        font.family: "segoe"
        font.pixelSize: parent.width * 0.01
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    CheckBox{
        checked:status
        checkable: false
        width:parent.width/10
        height: parent.height/10
    }

}


