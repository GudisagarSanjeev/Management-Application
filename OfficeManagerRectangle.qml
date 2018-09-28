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
        id:cemp
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
                        h.sourceComponent=createempp

                        createemp.color="gray"
                        empdetails.color="#404B69"
                        deleteempp.color="#404B69"
                        leave.color="#404B69"

                        createemp.border.color="#D9FAFF"
                        empdetails.border.color="black"
                        leave.border.color="black"
                        deleteempp.border.color="black"

                        rect.color="black"
                        rect0.color="white"
                        rect1.color="white"
                        rect22.color="white"


                        rect.font.pixelSize=parent.height/7
                        rect0.font.pixelSize=parent.height/8
                        rect1.font.pixelSize=parent.height/8
                        rect22.font.pixelSize=parent.height/8

                        r.visible=true
                        r0.visible=false
                        r1.visible=false
                        r2.visible=false

                        // ani.running=true

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
                    text:"Employee Details"
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
                        h.sourceComponent=viewemp

                        createemp.color="#404B69"
                        leave.color="#404B69"
                        empdetails.color="gray"
                        deleteempp.color="#404B69"

                        createemp.border.color="black"
                        leave.border.color="black"
                        deleteempp.border.color="black"
                        empdetails.border.color="#D9FAFF"

                        rect0.color="black"
                        rect.color="white"
                        rect1.color="white"
                        rect22.color="white"

                        rect0.font.pixelSize=parent.height/7
                        rect.font.pixelSize=parent.height/8
                        rect1.font.pixelSize=parent.height/8
                        rect22.font.pixelSize=parent.height/8

                        r0.visible=true
                        r.visible=false
                        r1.visible=false
                        r2.visible=false

                        //ani0.running=true

                        changeTitle("Employee Details")
                    }
                }
            }
            Rectangle{
                id:leave
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
                    text:"Leave Management"
                    color:"white"
                    wrapMode: Text.WordWrap
                    font.family: "segoe"
                    font.pixelSize:Math.min(parent.height/8,parent.width/8)
                    anchors.centerIn: parent
                }
                MouseArea{
                    anchors.fill: parent
                    hoverEnabled: true
                    onEntered: leave.opacity=0.5
                    onExited: leave.opacity=1
                    onClicked: {
                        h.sourceComponent=leaveemp

                        createemp.color="#404B69"
                        leave.color="gray"
                        empdetails.color="#404B69"
                        deleteempp.color="#404B69"

                        createemp.border.color="black"
                        empdetails.border.color="black"
                        deleteempp.border.color="black"
                        leave.border.color="#D9FAFF"

                        rect0.color="white"
                        rect1.color="black"
                        rect.color="white"
                        rect22.color="white"

                        rect0.font.pixelSize=parent.height/8
                        rect.font.pixelSize=parent.height/8
                        rect1.font.pixelSize=parent.height/7
                        rect22.font.pixelSize=parent.height/8

                        r0.visible=false
                        r1.visible=true
                        r.visible=false
                        r2.visible=false

                        //ani1.running=true

                        changeTitle("Leave Management")
                    }
                }
            }
            Rectangle{
                id:deleteempp
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
                    id:rect22
                    text:"Delete Employee"
                    color:"white"
                    wrapMode: Text.WordWrap
                    font.family: "segoe"
                    font.pixelSize:Math.min(parent.height/8,parent.width/8)
                    anchors.centerIn: parent
                }
                MouseArea{
                    anchors.fill: parent
                    hoverEnabled: true
                    onEntered: deleteempp.opacity=0.5
                    onExited: deleteempp.opacity=1
                    onClicked: {
                        h.sourceComponent=deleteemp

                        createemp.color="#404B69"
                        deleteempp.color="gray"
                        leave.color="#404B69"
                        empdetails.color="#404B69"

                        createemp.border.color="black"
                        empdetails.border.color="black"
                        deleteempp.border.color="#D9FAFF"
                        leave.border.color="black"

                        rect0.color="white"
                        rect1.color="white"
                        rect.color="white"
                        rect22.color="black"

                        rect0.font.pixelSize=parent.height/8
                        rect.font.pixelSize=parent.height/8
                        rect22.font.pixelSize=parent.height/7
                        rect1.font.pixelSize=parent.height/8

                        r0.visible=false
                        r1.visible=false
                        r.visible=false
                        r2.visible=true

                        //ani1.running=true

                        changeTitle("Delete employee")
                    }
                }
            }
            Rectangle{
                id:r33
                height: parent.height
                width: parent.width
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
                    text:""
                    color:"white"
                    wrapMode: Text.WordWrap
                    font.family: "segoe"
                    font.pixelSize:Math.min(parent.height/8,parent.width/8)
                    anchors.centerIn: parent
                }
                //                MouseArea{
                //                    anchors.fill: parent
                //                    hoverEnabled: true
                //                    onEntered: leave.opacity=0.5
                //                    onExited: leave.opacity=1
                //                    onClicked: {
                //                        h.sourceComponent=leaveemp

                //                        createemp.color="#404B69"
                //                        leave.color="gray"
                //                        empdetails.color="#404B69"

                //                        createemp.border.color="black"
                //                        empdetails.border.color="black"
                //                        leave.border.color="#D9FAFF"

                //                        rect0.color="white"
                //                        rect1.color="black"
                //                        rect.color="white"

                //                        rect0.font.pixelSize=parent.height/8
                //                        rect.font.pixelSize=parent.height/8
                //                        rect1.font.pixelSize=parent.height/7

                //                        r0.visible=false
                //                        r1.visible=true
                //                        r.visible=false

                //                        ani1.running=true

                //                        changeTitle("Leave Management")
                //                    }
                //                }
            }
            Rectangle{
                id:back
                height: parent.height
                width: parent.width
                color:"#404B69"
                border.color: "black"
                Text{
                    id:rect2
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
                        cemp.visible=false
                        header.visible=false
                        h.visible=false
                    }
                }
            }
        }
    }
}
