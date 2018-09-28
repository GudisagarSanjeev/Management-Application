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
        id:messageDialog
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
                    spacing: parent.width/16
                    ERect{
                        width: parent.width *0.4
                        text:"Employee ID"
                    }

                    N.ComboBox{
                        id:text1
                        width: parent.width * 0.4
                        height: parent.height *0.9
                        model:emp
                        textRole: "empid"
                        currentIndex: -2
                    }
                    O.TextField{
                        id:rect
                        readOnly: true
                        width: parent.width *0.5
                        height: parent.height * 0.9
                        font.bold: true
                        // text:name.currentText
                    }
                    N.ComboBox{
                        id:name
                        model: emp
                        textRole:"firstname"
                        visible: false
                        currentIndex:text1.currentIndex
                        onCurrentTextChanged:{
                            rect.text= name.currentText
                        }
                    }
                    O.TextField{
                        id:rect1
                        readOnly: true
                        width: parent.width *0.4
                        height: parent.height * 0.9
                        font.bold: true
                        // text:name.currentText
                    }
                    N.ComboBox{
                        id:name1
                        model: emp
                        textRole:"lastname"
                        visible: false
                        currentIndex:text1.currentIndex
                        onCurrentTextChanged:{
                            rect1.text= name1.currentText
                        }
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
                                    leavemodel.deleteempleavedetails(text1.currentText)
                                    emp.deleteemployee(text1.currentText)
                                    modell.deleteemp(text1.currentText)
                                    tmodell.deleteTimemodel(text1.currentText)

                                    messageDialog.open()
                                    messageDialog.title="information"
                                    messageDialog.text="Employee deleted from database"
                                    text1.currentIndex=-2
                                    rect.text=""
                                    rect1.text=""
                                }else{
                                    text1.currentIndex=-2
                                    rect.text=""
                                    rect1.text=""
                                    messageDialog.title="Alert"
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

