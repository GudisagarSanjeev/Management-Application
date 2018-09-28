import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Controls 2.3
import  QtQuick.Dialogs 1.1
Item{
    id:r1
    visible: true
    height: Screen.desktopAvailableHeight
    width: Screen.desktopAvailableWidth


    Loader{
        id:hload
    }
    Rectangle {
        id:hrect
        anchors.fill: parent
        signal peoplemClicked

        color:"gray"
        Image{
            smooth: true
            anchors.fill: parent
            source:"qrc:/Images/Homepage.jpg"
            opacity: 0.7

            Rectangle{
                height: parent.height*0.9
                width: parent.width *0.9
                color:"transparent"
                anchors.centerIn: parent
                //color:"yellow"
                Row{
                    height: parent.height *0.8
                    width: parent.width *0.8
                    anchors.centerIn: parent
                    spacing: parent.width *0.01
                    Rectangle{
                        height: parent.height/1.5
                        width: parent.width/2.8
                        anchors.verticalCenter: parent.verticalCenter
                        //opacity: 0.5
                        radius:1200
                        border.color: "blue"
                        border.width: 1
                        color: "#40ffffff"
                        //                        Image{
                        //                            width: parent.width/3.5
                        //                            height: parent.height/3
                        //                            //anchors.centerIn: parent
                        //                            anchors.horizontalCenter: parent.horizontalCenter
                        //                            source: "qrc:/Images/Logo.png"

                        //                        }

                        Text{
                            text:"PthinkS"
                            wrapMode: Text.WordWrap
                            font.family: "segoe"
                            color:"white"
                            font.pixelSize:Math.min(parent.height/3,parent.width/6)
                            anchors.centerIn: parent
                        }
                    }


                    Rectangle{
                        height: parent.height
                        width: parent.width /1.8
                        //                        color:"#807C79"
                        color:"transparent"
                        //opacity: 0.8
                        //border.color: "white"

                        Column{
                            height: parent.height *0.6
                            width: parent.width
                            anchors.verticalCenter: parent.verticalCenter
                            spacing: parent.height *0.02
                            Hrect{
                                height: parent.height/7
                                id:peoplemanagement

                                Roundrect{
                                    text:"01"
                                }
                                text:"People Management"

                                //


                                MouseArea{
                                    anchors.fill: parent
                                    hoverEnabled: true
                                    onEntered:{peoplemanagement.opacity=1;shake.start();}

                                    onExited: {peoplemanagement.opacity=0.6; shake.stop();}
                                    onClicked: {
                                        hload.source="AccountManagement.qml"
                                        hrect.visible=false
                                    }
                                }
                                SequentialAnimation{
                                    id:shake
                                    loops: Animation.Infinite
                                    alwaysRunToEnd: true
                                    RotationAnimation{target: peoplemanagement; from:0 ; to:2;duration: 100 ; direction: RotationAnimation.Clockwise}
                                    RotationAnimation{target: peoplemanagement; from:2; to:358 ;duration: 100 ; direction: RotationAnimation.Counterclockwise}
                                    RotationAnimation{target: peoplemanagement; from:358 ; to:0 ;duration: 100 ; direction: RotationAnimation.Clockwise}

                                }
                            }
                            Hrect{
                                id:accountmanagement
                                height: parent.height/7
                                Roundrect{
                                    text:"02"
                                }
                                text:"Account Manager"
                                MouseArea{
                                    anchors.fill: parent
                                    hoverEnabled: true
                                    onEntered:{accountmanagement.opacity=1;shake1.start();}
                                    onExited: {accountmanagement.opacity=0.6;shake1.stop();}
                                    onClicked: {
                                        hload.source="PeopleManagement.qml"
                                        hrect.visible=false
                                    }
                                }
                                SequentialAnimation{
                                    id:shake1
                                    loops: Animation.Infinite
                                    alwaysRunToEnd: true
                                    RotationAnimation{target: accountmanagement; from:0 ; to:2;duration: 100 ; direction: RotationAnimation.Clockwise}
                                    RotationAnimation{target: accountmanagement; from:2; to:358 ;duration: 100 ; direction: RotationAnimation.Counterclockwise}
                                    RotationAnimation{target: accountmanagement; from:358 ; to:0 ;duration: 100 ; direction: RotationAnimation.Clockwise}

                                }
                            }
                            Hrect{
                                height: parent.height/7
                                Roundrect{
                                    text:"03"
                                }
                                id:officemanager
                                text:"Office Manager"
                                MouseArea{
                                    anchors.fill: parent
                                    hoverEnabled: true
                                    onEntered:{officemanager.opacity=1;shake2.start();}
                                    onExited: {officemanager.opacity=0.6;shake2.stop();}
                                    onClicked: {
                                        hload.source="OfficeManager.qml"
                                        hrect.visible=false
                                    }
                                }
                                SequentialAnimation{
                                    id:shake2
                                    loops: Animation.Infinite
                                    alwaysRunToEnd: true
                                    RotationAnimation{target: officemanager; from:0 ; to:2;duration: 100 ; direction: RotationAnimation.Clockwise}
                                    RotationAnimation{target: officemanager; from:2; to:358 ;duration: 100 ; direction: RotationAnimation.Counterclockwise}
                                    RotationAnimation{target: officemanager; from:358 ; to:0 ;duration: 100 ; direction: RotationAnimation.Clockwise}

                                }
                            }
                            Hrect{
                                height: parent.height/7
                                Roundrect{
                                    text:"04"
                                }
                                text:"Time Management"
                                id:timemanagement
                                MouseArea{
                                    anchors.fill: parent
                                    hoverEnabled: true
                                    onEntered:{timemanagement.opacity=1;shake3.start();}
                                    onExited: {timemanagement.opacity=0.6;shake3.stop();}
                                    onClicked: {

                                    }
                                }

                                SequentialAnimation{
                                    id:shake3
                                    loops: Animation.Infinite
                                    alwaysRunToEnd: true
                                    RotationAnimation{target: timemanagement; from:0 ; to:2;duration: 100 ; direction: RotationAnimation.Clockwise}
                                    RotationAnimation{target: timemanagement; from:2; to:358 ;duration: 100 ; direction: RotationAnimation.Counterclockwise}
                                    RotationAnimation{target: timemanagement; from:358 ; to:0 ;duration: 100 ; direction: RotationAnimation.Clockwise}

                                }
                            }
                            Hrect{
                                height: parent.height/7
                                Roundrect{
                                    text:"05"
                                }
                                text:"Application Manager"
                                id:appmanager
                                MouseArea{
                                    anchors.fill: parent
                                    hoverEnabled: true
                                    onEntered:{appmanager.opacity=1;shake4.start();}
                                    onExited: {appmanager.opacity=0.6;shake4.stop();}
                                    onClicked: {

                                    }
                                }
                                SequentialAnimation{
                                    id:shake4
                                    loops: Animation.Infinite
                                    alwaysRunToEnd: true
                                    RotationAnimation{target: appmanager; from:0 ; to:2;duration: 100 ; direction: RotationAnimation.Clockwise}
                                    RotationAnimation{target: appmanager; from:2; to:358 ;duration: 100 ; direction: RotationAnimation.Counterclockwise}
                                    RotationAnimation{target: appmanager; from:358 ; to:0 ;duration: 100 ; direction: RotationAnimation.Clockwise}

                                }

                            }
                            Hrect{
                                height: parent.height/7
                                id:logout
                                Roundrect{
                                    text:"06"
                                }
                                text:"Close"
                                MouseArea{
                                    anchors.fill: parent
                                    hoverEnabled: true
                                    onEntered:{logout.opacity=1;shake5.start();}
                                    onExited: {logout.opacity=0.6;shake5.stop();}
                                    onClicked: {

                                        Qt.quit()
                                    }
                                }
                                SequentialAnimation{
                                    id:shake5
                                    alwaysRunToEnd: true
                                    loops: Animation.Infinite
                                    RotationAnimation{target: logout; from:0 ; to:2;duration: 100 ; direction: RotationAnimation.Clockwise}
                                    RotationAnimation{target: logout; from:2; to:358 ;duration: 100 ; direction: RotationAnimation.Counterclockwise}
                                    RotationAnimation{target: logout; from:358 ; to:0 ;duration: 100 ; direction: RotationAnimation.Clockwise}

                                }
                            }

                        }

                    }
                }
            }
        }
    }
}



