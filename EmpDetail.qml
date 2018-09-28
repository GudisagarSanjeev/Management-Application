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
    signal sendDate(string fdate)
    signal sendsecDate(string fsdate)
    onSendDate: {
        text6.text = fdate
    }

    onSendsecDate: {
        text7.text = fsdate
    }
    DialogBox{
        id:messageDialog
        height: parent.height/3
        width: parent.width/3.5
        y:  parent.height/4-height/4
        x:parent.width/2.5-width/2.5
    }

    CalinderPopup{
        id:cal
    }
    Calisecound{
        id:cal2
    }

    Rectangle{
        width: parent.width/1.5
        height: parent.height
        anchors.centerIn: parent
        color:"#D9FAFF"

        Rectangle{
            width: parent.width
            height: parent.height * 0.9
            anchors.centerIn: parent
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
                        text:"Employee id"
                    }
                    N.ComboBox{
                        id:combo1
                        height: parent.height *0.9
                        width: parent.width * 1.45
                        model:emp
                        textRole: "empid"
                        currentIndex: -2
                        //font.pixelSize: Math.min(parent.height/3,parent.width/8)
                    }
                }
                Row{
                    height: parent.height/20
                    width: parent.width/2.3
                    spacing: parent.width/10
                    ERect{
                        width: parent.width *0.6
                        text:"Resource Name"
                    }
                    TxtFiled{
                        id:text1
                        readOnly: true
                    }
                    N.ComboBox{
                        id:comb
                        model: emp
                        textRole:"firstname"
                        visible: false
                        currentIndex:combo1.currentIndex
                        onCurrentTextChanged:{
                            text1.text= comb.currentText
                        }
                    }

                }
                Row{
                    height: parent.height/20
                    width: parent.width/2.3
                    spacing: parent.width/10
                    ERect{
                        width: parent.width *0.6
                        text:"Company"
                    }
                    TxtFiled{
                        id:text2
                        onEditingFinished: {
                            text2.text=Cap.capitalize(text2.text)
                        }
                    }
                }
                Row{
                    height: parent.height/20
                    width: parent.width/2.3
                    spacing: parent.width/10
                    ERect{
                        width: parent.width *0.6
                        text:"Reporting Manager"
                    }
                    TxtFiled{
                        id:text3
                        onEditingFinished: {
                            text3.text=Cap.capitalize(text3.text)
                        }
                    }
                }
                Row{
                    height: parent.height/20
                    width: parent.width/2.3
                    spacing: parent.width/10
                    ERect{
                        width: parent.width *0.6
                        text:"PMO"
                    }
                    TxtFiled{
                        id:text4
                        onEditingFinished: {
                            text4.text=Cap.capitalize(text4.text)
                        }
                    }
                }   Row{
                    height: parent.height/20
                    width: parent.width/2.3
                    spacing: parent.width/10
                    ERect{
                        width: parent.width *0.6
                        text:"PO Number"
                    }
                    TxtFiled{
                        id:text5
                        onEditingFinished: {
                            text5.text=Cap.capitalize(text5.text)
                        }
                    }
                }

                Row{
                    height: parent.height/20
                    width: parent.width/2.3
                    spacing: parent.width/10
                    ERect{
                        width: parent.width *0.61
                        text:"PO Date"

                    }
                    //                    TxtFiled{
                    //                        id:text6
                    //                        onPressed: {
                    //                            cal.open()
                    //                        }
                    //                    }
                    TxtFiled{
                        id:text6
                        width: parent.width *0.6
                        placeholderText: "Start date"
                        readOnly: true
                        onPressed: {

                            cal.open()
                        }
                    }
                    TxtFiled{
                        id:text7
                        width: parent.width *0.61
                        placeholderText: "End date"
                        readOnly: true
                        onPressed: {
                            cal2.open()
                        }
                    }
                }
                Row{
                    height: parent.height/20
                    width: parent.width/2.3
                    spacing: parent.width/10
                    ERect{
                        width: parent.width *0.6
                        text:"Total Lots"
                    }
                    TxtFiled{
                        width: parent.width *0.6
                        id:text8
                        validator: RegExpValidator { regExp: /[A-Z_0-9]+/}
                    }

                    Rectangle{
                        width: parent.width *0.6
                        height: parent.height *0.9
                        color:"transparent"
                        Row{
                            width: parent.width
                            height: parent.height
                            spacing: parent.width * 0.1
                            ERect{
                                width: parent.width *0.5
                                height: parent.height
                                text:"Per Lot"
                            }
                            TxtFiled{
                                width: parent.width *0.43
                                height: parent.height
                                id:text81
                                validator: RegExpValidator { regExp: /[A-Z_0-9]+/}
                                onEditingFinished: {
                                    var r=parseFloat(parseFloat(text8.text)* parseFloat(text81.text)).toFixed(2);
                                    text9.text=Number(r).toLocaleString(Qt.locale())
                                }
                            }
                        }

                    }

                }

                Row{
                    height: parent.height/20
                    width: parent.width/2.3
                    spacing: parent.width/10
                    ERect{
                        width: parent.width *0.6
                        text:"PO Amount"
                    }
                    TxtFiled{
                        id:text9
                        readOnly: true

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

                                if(combo1.currentIndex ==-2 && text2.text=="" && text3.text=="" && text4.text=="" && text5.text=="" && text6.text=="" && text7.text=="" && text8.text=="" && text81.text=="" ){

                                    messageDialog.text = "All Fields are Mandatory"
                                    messageDialog.open()
                                }else{
                                    modell.addmanagement(combo1.currentText,text1.text,text2.text,text3.text,text4.text,text5.text,text6.text,text7.text,text8.text,text81.text,true)
                                    messageDialog.text = "Records inserted successfully"
                                    messageDialog.open()


                                    combo1.currentIndex=-2;text3.clear();text5.clear();text7.clear();text9.clear();
                                    text2.clear();text4.clear();text6.clear();text8.clear();text81.clear();text1.clear();


                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

