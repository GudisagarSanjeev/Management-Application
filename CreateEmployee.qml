import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.3 as N
import QtQuick.Dialogs 1.3
import QtQuick.Controls 1.4 as O

Rectangle {
    id:timee
    anchors.fill: parent
    color: "gray"
    N.Dialog{
        id: messageDialog
        height: parent.height/3
        width: parent.width/3.5
        y:  parent.height/4-height/4
        x:parent.width/2.5-width/2.5
        modal: true
        title:"Alert Box"
        standardButtons: Dialog.Ok | Dialog.Cancel

        property alias text: txt.text
        Rectangle{
            height: parent.height
            width: parent.width
            color:"#404B69"
            Text{
                id:txt
                color:"white"
                font.family: "segoe"
                font.pixelSize:parent.height/8
                anchors.centerIn: parent
            }
        }
    }

    Rectangle{
        width: parent.width/1.5
        height: parent.height
        anchors.centerIn: parent
        color:"#D9FAFF"

        Rectangle{
            width: parent.width
            height: parent.height* 0.95
            anchors.centerIn: parent
            color: "transparent"
            Column{
                height: parent.height
                width: parent.width/1.1
                anchors.centerIn: parent
                spacing: parent.width * 0.010
                Row{
                    height: parent.height/20
                    width: parent.width/2.3
                    spacing: parent.width/10
                    ERect{
                        width: parent.width *0.6
                        text:"First name"
                    }
                    TxtFiled{
                        id:text1
                        width: parent.width * 1.45
                    }

                }
                Row{
                    height: parent.height/20
                    width: parent.width/2.3
                    spacing: parent.width/10
                    ERect{
                        width: parent.width *0.6
                        text:"Last name"
                    }
                    TxtFiled{
                        id:text2
                        width: parent.width * 1.45
                    }
                }
                Row{
                    height: parent.height/20
                    width: parent.width/2.3
                    spacing: parent.width/10
                    ERect{
                        width: parent.width *0.6
                        text:"Father name"
                    }
                    TxtFiled{
                        id:text3
                        width: parent.width * 1.45
                    }
                }   Row{
                    height: parent.height/20
                    width: parent.width/2.3
                    spacing: parent.width/10
                    ERect{
                        width: parent.width *0.6
                        text:"Address1"
                    }
                    TxtFiled{
                        id:text4
                        width: parent.width * 1.45
                    }
                }
                Row{
                    height: parent.height/20
                    width: parent.width/2.3
                    spacing: parent.width/10
                    ERect{
                        width: parent.width *0.6
                        text:"Address2"
                    }
                    TxtFiled{
                        id:text41
                        width: parent.width * 1.45
                    }
                }Row{
                    height: parent.height/20
                    width: parent.width/2.3
                    spacing: parent.width/10
                    ERect{
                        width: parent.width *0.6
                        text:"Location"
                    }
                    TxtFiled{
                        id:text5
                        width: parent.width * 1.45
                    }
                }   Row{
                    height: parent.height/20
                    width: parent.width/2.3
                    spacing: parent.width/10
                    ERect{
                        width: parent.width *0.6
                        text:"Zip code"
                    }
                    TxtFiled{
                        id:text6
                        width: parent.width * 1.45
                    }
                }   Row{
                    height: parent.height/20
                    width: parent.width/2.3
                    spacing: parent.width/10
                    ERect{
                        width: parent.width *0.6
                        text:"State"
                    }
                    TxtFiled{
                        id:text7
                        width: parent.width * 1.45
                    }
                }

                Row{
                    height: parent.height/20
                    width: parent.width/2.3
                    spacing: parent.width/10
                    ERect{
                        width: parent.width *0.6
                        text:"Email"
                    }
                    TxtFiled{
                        id:text8
                        width: parent.width * 1.45
                    }
                }
                Row{
                    height: parent.height/20
                    width: parent.width/2.3
                    spacing: parent.width/10
                    ERect{
                        width: parent.width *0.6
                        text:"Phone/Mobile"
                    }
                    TxtFiled{
                        id:text9
                        width: parent.width * 1.45
                    }
                }
                Row{
                    height: parent.height/20
                    width: parent.width/2.3
                    spacing: parent.width/10
                    ERect{
                        width: parent.width *0.6
                        text:"Emergency contact"
                    }
                    TxtFiled{
                        id:text10
                        width: parent.width * 1.45
                    }
                }


                Row{
                    height: parent.height/20
                    width: parent.width
                    ERect{
                        id:submit
                        text:"Submit"
                        color:"#606470"

                        MouseArea{
                            anchors.fill: parent
                            hoverEnabled: true
                            onEntered: submit.opacity=0.5
                            onExited: submit.opacity=1
                            onClicked: {

                               db.storeData(text1.text,text2.text,text3.text,text4.text,text41.text,text5.text,text6.text,text7.text,text8.text,text9.text,text10.text,true);
                                messageDialog.text = "Employee Created successfully"
                                messageDialog.open()

                                text1.clear();text2.clear();text3.clear();text4.clear();text5.clear();text6.clear();
                                text7.clear();text8.clear();text9.clear();text10.clear()

                            }
                        }
                    }
                }
            }
        }
    }
}


