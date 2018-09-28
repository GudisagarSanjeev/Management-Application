import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.3 as N
import QtQuick.Dialogs 1.3
import QtQuick.Controls 1.4 as O
import "ExternalJavaScriptFile.js" as Cap

Rectangle {
    id:empdetaill
    anchors.fill: parent
    color: "gray"
    DialogBox{
        id: messageDialog
        height: parent.height/3
        width: parent.width/3.5
        y:  parent.height/4-height/4
        x:parent.width/2.5-width/2.5
    }

    Rectangle{
        width: parent.width/1.5
        height: parent.height
        anchors.centerIn: parent
        color:"#D9FAFF"

        Rectangle{
            width: parent.width
            height: parent.height* 0.95
            anchors.verticalCenter: parent.verticalCenter
            color: "transparent"
            Column{
                height: parent.height
                width: parent.width/1.1
                anchors.centerIn: parent
                spacing: parent.width * 0.025
                Row{
                    height: parent.height/20
                    width: parent.width/2.3
                    spacing: parent.width/10
                    ERect{
                        width: parent.width *0.6
                        text:"Employee ID"
                    }

                    N.ComboBox{
                        id:text1
                        currentIndex: -2
                        model:modell
                        textRole: "empid"
                        height: parent.height *0.9
                        width: parent.width * 1.45
                    }
                }
                Row{
                    height: parent.height/20
                    width: parent.width
                    spacing: parent.width/10
                    ERect{
                        id:submit
                        width: parent.width
                        text:"Submit"
                        color:"#606470"

                        MouseArea{
                            anchors.fill: parent
                            hoverEnabled: true
                            onEntered: submit.opacity=0.5
                            onExited: submit.opacity=1
                            onClicked: {
                                if(text1.currentIndex!=-2){

                                    tmodell.deleteTimeOnlymodel(text1.currentText)
                                    modell.deleteOnlyemp(text1.currentText)

                                    messageDialog.open()
                                    messageDialog.text="Employee deleted from database"
                                    text1.currentIndex=-2
                                }else{
                                    messageDialog.open()
                                    messageDialog.text="Employee id not found"
                                }
                            }
                        }
                    }
                }

            }
        }
    }
}

