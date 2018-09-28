import QtQuick 2.9

Row{
    id:view
    width:parent.width
    // height: parent.height / 5
    Rectangle{
        width:parent.width/10
        height: parent.height
        color:"transparent"
        Image{
            source:image
            width:parent.width/4
            height: parent.height
            anchors.centerIn: parent
        }
    }
    Text{
        width:parent.width/10
        text:empid
        font.pixelSize: parent.width * 0.011
        color:"white"
        font.family: "segoe"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    Text{
        width:parent.width/10
        text:firstname
        font.pixelSize: parent.width * 0.011
        color:"white"
        font.family: "segoe"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    Text{
        width:parent.width/10
        text:lastname
        color:"white"
        font.pixelSize: parent.width * 0.011
        font.family: "segoe"
        horizontalAlignment: Text.AlignHCenter
        height: parent.height
        verticalAlignment: Text.AlignVCenter
    }
    //    Text{
    //        text:fathername
    //        color:"white"
    //        font.pixelSize: parent.width * 0.011
    //        width:parent.width/10
    //        font.family: "segoe"
    //        horizontalAlignment: Text.AlignHCenter
    //        verticalAlignment: Text.AlignVCenter
    //    }
    Text{
        text:address1
        color:"white"
        width:parent.width/10
        font.family: "segoe"
        font.pixelSize: parent.width * 0.011
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    Text{
        text:location
        color:"white"
        font.pixelSize: parent.width * 0.011
        width:parent.width/10
        font.family: "segoe"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    //    Text{
    //        text:zipcode
    //        color:"white"
    //        width:parent.width/10
    //        font.pixelSize: parent.width * 0.011
    //        font.family: "segoe"
    //        horizontalAlignment: Text.AlignHCenter
    //        verticalAlignment: Text.AlignVCenter
    //    }
    Text{
        text:statee
        color:"white"
        font.pixelSize: parent.width * 0.011
        width:parent.width/10
        font.family: "segoe"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    Text{
        text:email
        color:"white"
        font.pixelSize: parent.width * 0.011
        width:parent.width/10
        font.family: "segoe"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    Text{
        text:phone
        width:parent.width/10
        color:"white"
        font.pixelSize: parent.width * 0.011
        font.family: "segoe"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    Text{
        text:emergencycontact
        width:parent.width/10
        font.family: "segoe"
        font.pixelSize: parent.width * 0.011
        color:"white"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    //    Text{
    //        text:emergencycontact
    //        width:parent.width/10
    //        font.family: "segoe"
    //        font.pixelSize: parent.width * 0.011
    //        color:"white"
    //        horizontalAlignment: Text.AlignHCenter
    //        verticalAlignment: Text.AlignVCenter
    //    }
}




