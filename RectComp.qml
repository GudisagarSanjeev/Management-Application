import QtQuick 2.0
import QtGraphicalEffects 1.0
import QtQuick.Layouts 1.3

Rectangle{
    Loader{
        id:rload
    }

    id:homepagerect
    height: parent.height*1.11
    width: parent.width
    color:"gray"
    Rectangle{
        id:crect
        height: parent.height
        width: parent.width
        anchors.centerIn: parent
        color:"transparent"
        Column {
            width: parent.width
            height: parent.height/8
            //            spacing: parent.height /26
            Rectangle{
                id:createemp
                height: parent.height
                width: parent.width
                color:"#404B69"
                border.color: "black"
                Rectangle{
                    id:r
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
                    id:rect
                    text:"Create Employee"
                    color:"white"
                    wrapMode: Text.WordWrap
                    font.family: "segoe"
                    font.pixelSize:Math.min(parent.height/8,parent.width/8)
                    anchors.centerIn: parent
                }
                MouseArea{
                    anchors.fill: parent
                    hoverEnabled: true
                    onEntered: createemp.opacity=0.5
                    onExited: createemp.opacity=1
                    onClicked: {
                        //h.sourceComponent=cemp

                        createemp.color="gray"
                        time.color="#404B69"
                        empdetails.color="#404B69"
                        viewdetail.color="#404B69"
                        deleltemp.color="#404B69"

                        time.border.color="black"
                        empdetails.border.color="black"
                        createemp.border.color="#D9FAFF"
                        viewdetail.border.color="black"
                        deleltemp.border.color="black"

                        rect.color="black"
                        rect0.color="white"
                        rect1.color="white"
                        rect2.color="white"
                        rect23.color="white"

                        rect.font.pixelSize=parent.height/7
                        rect0.font.pixelSize=parent.height/8
                        rect1.font.pixelSize=parent.height/8
                        rect2.font.pixelSize=parent.height/8
                        rect23.font.pixelSize=parent.height/8

                        r.visible=true
                        r0.visible=false
                        r1.visible=false
                        r2.visible=false
                        r23.visible=false

                        //ani.running=true

                        changeTitle("Create Employee")
                    }
                }
            }
            Rectangle{
                id:empdetails
                height: parent.height
                width: parent.width
                color:"#404B69"
                border.color: "black"
                Rectangle{
                    id:r0
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
                    text:"Employee Detail"
                    color:"white"
                    wrapMode: Text.WordWrap
                    font.family: "segoe"
                    font.pixelSize:Math.min(parent.height/8,parent.width/8)
                    anchors.centerIn: parent
                }
                MouseArea{
                    anchors.fill: parent
                    hoverEnabled: true
                    onEntered: empdetails.opacity=0.5
                    onExited: empdetails.opacity=1
                    onClicked: {
                        h.sourceComponent=empdetail

                        time.color="#404B69"
                        empdetails.color="gray"
                        viewdetail.color="#404B69"
                        deleltemp.color="#404B69"
                        createemp.color="#404B69"

                        time.border.color="black"
                        empdetails.border.color="#D9FAFF"
                        viewdetail.border.color="black"
                        deleltemp.border.color="black"
                        createemp.border.color="black"

                        rect0.color="black"
                        rect1.color="white"
                        rect.color="white"
                        rect2.color="white"
                        rect23.color="white"

                        rect0.font.pixelSize=parent.height/7
                        rect1.font.pixelSize=parent.height/8
                        rect2.font.pixelSize=parent.height/8
                        rect.font.pixelSize=parent.height/8
                        rect23.font.pixelSize=parent.height/8

                        r0.visible=true
                        r.visible=false
                        r1.visible=false
                        r2.visible=false
                        r23.visible=false

                        //ani0.running=true

                        changeTitle("Employee Detail")
                    }
                }
            }
            Rectangle{
                id:time
                height: parent.height
                width: parent.width
                color:"#404B69"
                border.color: "black"
                Rectangle{
                    id:r1
                    width:parent.width
                    height: parent.height
                    visible: false
                    color:"#F6F4F4"

                    ParallelAnimation on x{
                        id:ani1
                        loops:Animation.Infinite
                        running: false
                        PropertyAnimation{to:parent.width/8;duration: 2000}
                    }
                }
                Text{
                    id:rect1
                    text:"Time"
                    color:"white"
                    wrapMode: Text.WordWrap
                    font.family: "segoe"
                    font.pixelSize:Math.min(parent.height/8,parent.width/8)
                    anchors.centerIn: parent
                }
                MouseArea{
                    anchors.fill: parent
                    hoverEnabled: true
                    onEntered: time.opacity=0.5
                    onExited: time.opacity=1
                    onClicked: {
                        h.sourceComponent=timee

                        empdetails.color="#404B69"
                        time.color="gray"
                        viewdetail.color="#404B69"
                        createemp.color="#404B69"
                        deleltemp.color="#404B69"

                        empdetails.border.color="black"
                        time.border.color="#D9FAFF"
                        viewdetail.border.color="black"
                        deleltemp.border.color="black"
                        createemp.border.color="black"

                        rect1.color="black"
                        rect0.color="white"
                        rect.color="white"
                        rect2.color="white"
                        rect23.color="white"

                        rect1.font.pixelSize=parent.height/7
                        rect0.font.pixelSize=parent.height/8
                        rect2.font.pixelSize=parent.height/8
                        rect.font.pixelSize=parent.height/8
                        rect23.font.pixelSize=parent.height/8

                        r1.visible=true
                        r0.visible=false
                        r2.visible=false
                        r.visible=false
                        r23.visible=false

                        //ani1.running=true
                        changeTitle("Time")

                    }
                }
            }
            Rectangle{
                id:viewdetail
                height: parent.height
                width: parent.width
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
                    text:"View detail"
                    color:"white"
                    wrapMode: Text.WordWrap
                    font.family: "segoe"
                    font.pixelSize:Math.min(parent.height/8,parent.width/8)
                    anchors.centerIn: parent
                }
                MouseArea{
                    anchors.fill: parent
                    hoverEnabled: true
                    onEntered: viewdetail.opacity=0.5
                    onExited: viewdetail.opacity=1
                    onClicked: {
                        h.sourceComponent=vemp

                        viewdetail.color="gray"
                        empdetails.color="#404B69"
                        deleltemp.color="#404B69"
                        time.color="#404B69"
                        createemp.color="#404B69"


                        empdetails.border.color="black"
                        viewdetail.border.color="#D9FAFF"
                        time.border.color="black"
                        deleltemp.border.color="black"
                        createemp.border.color="black"



                        rect2.color="black"
                        rect.color="white"
                        rect0.color="white"
                        rect1.color="white"
                        rect23.color="white"



                        rect2.font.pixelSize=parent.height/7
                        rect0.font.pixelSize=parent.height/8
                        rect.font.pixelSize=parent.height/8
                        rect1.font.pixelSize=parent.height/8
                        rect23.font.pixelSize=parent.height/8


                        r2.visible=true
                        r.visible=false
                        r0.visible=false
                        r1.visible=false
                        r23.visible=false

                        //ani2.running=true

                        changeTitle("View Employee detail")
                    }
                }
            }
            Rectangle{
                id:deleltemp
                height: parent.height
                width: parent.width
                color:"#404B69"
                border.color: "black"
                Rectangle{
                    id:r23
                    width:parent.width
                    height: parent.height
                    visible: false
                    color:"#F6F4F4"

                    ParallelAnimation on x{
                        id:ani23
                        loops:Animation.Infinite
                        running: false
                        PropertyAnimation{to:parent.width/8;duration: 2000}
                    }
                }
                Text{
                    id:rect23
                    text:"Delete resource details"
                    color:"white"
                    wrapMode: Text.WordWrap
                    font.family: "segoe"
                    font.pixelSize:Math.min(parent.height/8,parent.width/8)
                    anchors.centerIn: parent
                }
                MouseArea{
                    anchors.fill: parent
                    hoverEnabled: true
                    onEntered: deleltemp.opacity=0.5
                    onExited: deleltemp.opacity=1
                    onClicked: {
                        h.sourceComponent=demp

                        empdetails.color="#404B69"
                        viewdetail.color="#404B69"
                        deleltemp.color="gray"
                        time.color="#404B69"
                        createemp.color="#404B69"


                        empdetails.border.color="black"
                        deleltemp.border.color="#D9FAFF"
                        time.border.color="black"
                        viewdetail.border.color="black"
                        createemp.border.color="black"

                        rect23.color="black"
                        rect0.color="white"
                        rect1.color="white"
                        rect2.color="white"
                        rect.color="white"


                        rect23.font.pixelSize=parent.height/7
                        rect0.font.pixelSize=parent.height/8
                        rect.font.pixelSize=parent.height/8
                        rect1.font.pixelSize=parent.height/8
                        rect2.font.pixelSize=parent.height/8

                        r23.visible=true
                        r0.visible=false
                        r1.visible=false
                        r2.visible=false
                        r.visible=false

                        //ani23.running=true

                        changeTitle("Delete employee")
                    }
                }
            }
            Rectangle{
                id:back
                height: parent.height
                width: parent.width
                color:"#404B69"
                border.color: "black"
                Text{
                    id:rect3
                    text:"Back"
                    color:"white"
                    wrapMode: Text.WordWrap
                    font.family: "segoe"
                    font.pixelSize:Math.min(parent.height/8,parent.width/8)
                    anchors.centerIn: parent
                }
                MouseArea{
                    anchors.fill: parent
                    hoverEnabled: true
                    onEntered: back.opacity=0.5
                    onExited: back.opacity=1
                    onClicked: {
                        rload.source="Homepage.qml"
                        crect.visible=false
                        header.visible=false
                        h.visible=false

                    }
                }
            }
        }
    }
}
