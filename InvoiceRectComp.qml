import QtQuick 2.0
import QtGraphicalEffects 1.0
import QtQuick.Layouts 1.3

Rectangle{
    id:homepagerect
    height: parent.height *1.02
    width: parent.width
    color:"white"

    Loader{
        id:hload
    }
    Rectangle{
        id:crect
        height: parent.height
        width: parent.width
        anchors.centerIn: parent
        color:"transparent"
        ColumnLayout {
            anchors.fill: parent
            spacing: 0
            Rectangle{
                id:createinvoice
                //            height: parent.height/6
                //            width: parent.width
                Layout.fillHeight: true
                Layout.fillWidth: true
                color:"#404B69"
                border.color: "black"

                Rectangle{
                    id:r0
                    //                width:parent.width
                    //                height: parent.height
                    width:parent.width
                    height: parent.height
                    visible: false
                    color:"#F6F4F4"

                    ParallelAnimation on x{
                        id:ani0
                        loops:Animation.Infinite
                        running: false
                        PropertyAnimation{to:parent.width/8;duration: 2000}
                    }
                }
                Text{
                    id:rect0
                    text:"Create Invoice"
                    color:"white"
                    wrapMode: Text.WordWrap
                    font.family: "segoe"
                    font.pixelSize:Math.min(parent.height/8,parent.width/8)
                    anchors.centerIn: parent
                }
                MouseArea{

                    anchors.fill: parent
                    hoverEnabled: true
                    onEntered: createinvoice.opacity=0.5
                    onExited: createinvoice.opacity=1
                    onClicked: {
                        h.sourceComponent=createinvoicee
                        addinvoice.color="#404B69"
                        createinvoice.color="#D9FAFF"
                        viewinvoice.color="#404B69"
                        addpayment.color="#404B69"
                        viewpayment.color="#404B69"

                        addinvoice.border.color="black"
                        createinvoice.border.color="#D9FAFF"
                        viewinvoice.border.color="black"
                        addpayment.border.color="black"
                        viewpayment.border.color="black"

                        rect0.color="black"
                        rect1.color="white"
                        rect2.color="white"
                        rect3.color="white"
                        rect4.color="white"

                        rect0.font.pixelSize=parent.height/7
                        rect1.font.pixelSize=parent.height/8
                        rect2.font.pixelSize=parent.height/8
                        rect3.font.pixelSize=parent.height/8
                        rect4.font.pixelSize=parent.height/8

                        //                                //opacity=0.7
                        r0.visible=true
                        r1.visible=false
                        r2.visible=false
                        r3.visible=false
                        r4.visible=false
                        //                               // r1.opacity=.5
                        //ani0.running=true

                        changeTitle("Create Invoice")
                    }

                }
            }
            Rectangle{
                id:addinvoice
                //            height: parent.height/6
                //            width: parent.width
                Layout.fillHeight: true
                Layout.fillWidth: true
                color:"#404B69"
                border.color: "black"
                Rectangle{
                    id:r1
                    width:parent.width
                    height: parent.height
                    visible: false
                    color:"#F6F4F4"

                    ParallelAnimation on x{
                        id:ani
                        loops:Animation.Infinite
                        running: false
                        PropertyAnimation{to:parent.width/8;duration: 2000}
                    }
                }
                Text{
                    id:rect1
                    text:"Add Invoice"
                    color:"white"
                    wrapMode: Text.WordWrap
                    font.family: "segoe"
                    font.pixelSize:parent.height/8
                    anchors.centerIn: parent
                }

                MouseArea{

                    anchors.fill: parent
                    hoverEnabled: true
                    onEntered: addinvoice.opacity=0.5
                    onExited: addinvoice.opacity=1
                    onClicked: {

                        h.sourceComponent=enterinvoice
                        addinvoice.color="#D9FAFF"
                        createinvoice.color="#404B69"
                        viewinvoice.color="#404B69"
                        addpayment.color="#404B69"
                        viewpayment.color="#404B69"

                        addinvoice.border.color="#D9FAFF"
                        createinvoice.border.color="black"
                        viewinvoice.border.color="black"
                        addpayment.border.color="black"
                        viewpayment.border.color="black"


                        rect1.color="black"
                        rect0.color="white"
                        rect2.color="white"
                        rect3.color="white"
                        rect4.color="white"

                        rect1.font.pixelSize=parent.height/7
                        rect0.font.pixelSize=parent.height/8
                        rect2.font.pixelSize=parent.height/8
                        rect3.font.pixelSize=parent.height/8
                        rect4.font.pixelSize=parent.height/8

                        //opacity=0.7
                        r0.visible=false
                        r1.visible=true
                        r2.visible=false
                        r3.visible=false
                        r4.visible=false
                        // r1.opacity=.5
                        //ani.running=true

                        changeTitle("Add Invoice")
                    }

                }
            }
            Rectangle{
                id:viewinvoice
                //            height: parent.height/6
                //            width: parent.width
                Layout.fillHeight: true
                Layout.fillWidth: true
                color:"#404B69"
                border.color: "black"

                Rectangle{
                    id:r2
                    width:parent.width
                    height: parent.height
                    visible: false
                    color:"#F6F4F4"

                    ParallelAnimation on x{
                        id:ani2
                        loops:Animation.Infinite
                        running: false
                        PropertyAnimation{to:parent.width/8;duration: 2000}
                    }
                }
                Text{
                    id:rect2
                    color:"white"
                    text:"View Invoice"
                    font.family: "segoe"
                    font.pixelSize:parent.height/8
                    anchors.centerIn: parent
                }
                MouseArea{
                    anchors.fill: parent
                    hoverEnabled: true
                    onEntered: viewinvoice.opacity=0.5
                    onExited: viewinvoice.opacity=1
                    onClicked: {
                        h.sourceComponent=viewinvoicee
                        viewinvoice.color="#D9FAFF"
                        createinvoice.color="#404B69"
                        addinvoice.color="#404B69"
                        addpayment.color="#404B69"
                        viewpayment.color="#404B69"

                        viewinvoice.border.color="#D9FAFF"
                        createinvoice.border.color="black"
                        addinvoice.border.color="black"
                        addpayment.border.color="black"
                        viewpayment.border.color="black"

                        rect2.color="black"
                        rect1.color="white"
                        rect0.color="white"
                        rect3.color="white"
                        rect4.color="white"

                        rect1.font.pixelSize=parent.height/8
                        rect0.font.pixelSize=parent.height/8
                        rect2.font.pixelSize=parent.height/7
                        rect3.font.pixelSize=parent.height/8
                        rect4.font.pixelSize=parent.height/8

                        r1.visible=false
                        r0.visible=false
                        r2.visible=true
                        r3.visible=false
                        r4.visible=false
                        r2.opacity=1
                        //ani2.running=true

                        changeTitle("View Invoice")


                    }
                }
            }
            Rectangle{
                id:addpayment
                //            height: parent.height/6
                //            width: parent.width
                Layout.fillHeight: true
                Layout.fillWidth: true
                color:"#404B69"
                border.color: "black"

                Rectangle{
                    id:r3
                    width:parent.width
                    height: parent.height
                    visible: false
                    color:"#F6F4F4"

                    ParallelAnimation on x{
                        id:ani3
                        loops:Animation.Infinite
                        running: false
                        PropertyAnimation{to:parent.width/8;duration: 2000}
                    }
                }
                Text{

                    id:rect3
                    color:"white"
                    text:"Add Payment"
                    font.family: "segoe"
                    font.pixelSize:parent.height/8
                    anchors.centerIn: parent
                }
                MouseArea{
                    anchors.fill: parent
                    hoverEnabled: true
                    onEntered: addpayment.opacity=0.5
                    onExited: addpayment.opacity=1
                    onClicked: {
                        h.sourceComponent=enterpayment
                        addpayment.color="#D9FAFF"
                        createinvoice.color="#404B69"
                        addinvoice.color="#404B69"
                        viewinvoice.color="#404B69"
                        viewpayment.color="#404B69"

                        addpayment.border.color="#D9FAFF"
                        createinvoice.border.color="black"
                        addinvoice.border.color="black"
                        viewinvoice.border.color="black"
                        viewpayment.border.color="black"

                        rect1.color="white"
                        rect2.color="white"
                        rect3.color="black"
                        rect4.color="white"
                        rect0.color="white"

                        rect1.font.pixelSize=parent.height/8
                        rect0.font.pixelSize=parent.height/8
                        rect2.font.pixelSize=parent.height/8
                        rect3.font.pixelSize=parent.height/7
                        rect4.font.pixelSize=parent.height/8

                        r1.visible=false
                        r0.visible=false
                        r2.visible=false
                        r3.visible=true
                        r4.visible=false

                        r3.opacity=1
                        //ani3.running=true
                        changeTitle("Add Payment")
                    }
                }
            }
            Rectangle{
                id:viewpayment
                //            height: parent.height/6
                //            width: parent.width
                Layout.fillHeight: true
                Layout.fillWidth: true
                color:"#404B69"
                border.color: "black"

                Rectangle{
                    id:r4
                    width:parent.width
                    height: parent.height
                    radius:5
                    visible: false
                    color:"#F6F4F4"

                    ParallelAnimation on x{
                        id:ani4
                        loops:Animation.Infinite
                        running: false
                        PropertyAnimation{to:parent.width/8;duration: 2000}
                    }
                }
                Text{
                    id:rect4
                    text:"View Payment"
                    color:"white"
                    font.family: "segoe"
                    font.pixelSize:parent.height/8
                    anchors.centerIn: parent
                }
                MouseArea{
                    anchors.fill: parent
                    hoverEnabled: true
                    onEntered: viewpayment.opacity=0.5
                    onExited: viewpayment.opacity=1
                    onClicked: {
                        h.sourceComponent=viewPayment
                        createinvoice.color="#404B69"
                        addinvoice.color="#404B69"
                        viewinvoice.color="#404B69"
                        addpayment.color="#404B69"
                        viewpayment.color="#D9FAFF"

                        viewpayment.border.color="#D9FAFF"
                        createinvoice.border.color="black"
                        addinvoice.border.color="black"
                        viewinvoice.border.color="black"
                        addpayment.border.color="black"

                        rect1.color="white"
                        rect2.color="white"
                        rect3.color="white"
                        rect4.color="black"
                        rect0.color="white"

                        rect1.font.pixelSize=parent.height/8
                        rect0.font.pixelSize=parent.height/8
                        rect2.font.pixelSize=parent.height/8
                        rect4.font.pixelSize=parent.height/7
                        rect3.font.pixelSize=parent.height/8

                        r1.visible=false
                        r0.visible=false
                        r2.visible=false
                        r3.visible=false
                        r4.visible=true

                        r4.opacity=1;
                        //ani4.running=true

                        changeTitle("View Payment")
                    }
                }
            }
            Rectangle{
                id:logout
                //            height: parent.height/8.5
                //            width: parent.width
                Layout.fillHeight: true
                Layout.fillWidth: true
                color:"#404B69"
                border.color: "black"
                //            Text{
                //                id:rect4
                //                text:"View Payment"
                //                color:"white"
                //                font.family: "segoe"
                //                font.pixelSize:parent.height/8
                //                anchors.centerIn: parent
                //            }
                Text{
                    id:logut
                    text:"Back"
                    color:"white"
                    //                font.bold: true
                    font.family: "segoe"
                    font.pixelSize:parent.height/7.4
                    anchors.centerIn: parent
                }
                MouseArea{
                    anchors.fill: parent
                    hoverEnabled: true
                    onEntered: logout.opacity=0.5
                    onExited: logout.opacity=1
                    onClicked: {

                        hload.source="Homepage.qml"
                        crect.visible=false
                        header.visible=false
                        h.visible=false
                    }
                }
            }
        }
    }
}
