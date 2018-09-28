import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.3 as N
import QtQuick.Dialogs 1.3
import QtQuick.Controls 1.4 as O

Rectangle {
    id:timee
    anchors.fill: parent
    color: "gray"

    signal sendtDate(string ffdate)
    signal sendfDate(string fsdate)
    property int perlot;


    onSendfDate: {
        text8.text = fsdate
    }

    onSendtDate: {
        text7.text=ffdate
    }

    Calthird{
        id:cal3

    }
    CalFourth{
        id:cal4
    }

    DialogBox{
        id:messageDialog
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
            anchors.centerIn: parent
            color: "transparent"
            Column{
                height: parent.height
                width: parent.width/1.1
                anchors.centerIn: parent
                spacing: parent.width * 0.020
                Row{
                    height: parent.height/20
                    width: parent.width/2.3
                    spacing: parent.width/10
                    ERect{
                        width: parent.width *0.6
                        text:"Employee id"
                    }
                    N.ComboBox{
                        id:combo
                        height: parent.height *0.9
                        width: parent.width * 1.45
                        model:modell
                        textRole: "empid"
                        currentIndex: -2
                        font.pixelSize: Math.min(parent.height/3,parent.width/8)
                    }
                    N.ComboBox{
                        id:comb1
                        model: modell
                        textRole:"company"
                        visible: false
                        currentIndex:combo.currentIndex
                        onCurrentTextChanged:{
                            text2.text= comb1.currentText
                        }
                    }
                    N.ComboBox{
                        id:comb2
                        model: modell
                        textRole:"reportingmngr"
                        visible: false
                        currentIndex:combo.currentIndex
                        onCurrentTextChanged:{
                            text3.text= comb2.currentText
                        }
                    }
                    N.ComboBox{
                        id:comb3
                        model: modell
                        textRole:"pmo"
                        visible: false
                        currentIndex:combo.currentIndex
                        onCurrentTextChanged:{
                            text4.text= comb3.currentText
                        }
                    }
                    N.ComboBox{
                        id:comb4
                        model: modell
                        textRole:"ponumber"
                        visible: false
                        currentIndex:combo.currentIndex
                        onCurrentTextChanged:{
                            text5.text= comb4.currentText
                        }
                    }
                    N.ComboBox{
                        id:comb5
                        model: modell
                        textRole:"lots"
                        visible: false
                        currentIndex:combo.currentIndex
                        onCurrentTextChanged:{
                            text6.text= comb5.currentText
                        }
                        N.ComboBox{
                            id:comb6
                            model: modell
                            textRole:"perlot"
                            visible: false
                            currentIndex:combo.currentIndex
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
                        readOnly: true
                        width: parent.width * 1.45
                    }
                }
                Row{
                    height: parent.height/20
                    width: parent.width/2.3
                    spacing: parent.width/10
                    ERect{
                        width: parent.width *0.6
                        text:"Reporting manager"
                    }
                    TxtFiled{
                        id:text3
                        readOnly: true
                        width: parent.width * 1.45
                    }
                }   Row{
                    height: parent.height/20
                    width: parent.width/2.3
                    spacing: parent.width/10
                    ERect{
                        width: parent.width *0.6
                        text:"PMO"
                    }
                    TxtFiled{
                        id:text4
                        readOnly: true
                        width: parent.width * 1.45
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
                        readOnly: true
                        width: parent.width * 1.45
                    }
                }   Row{
                    height: parent.height/20
                    width: parent.width/2.3
                    spacing: parent.width/10
                    ERect{
                        width: parent.width *0.6
                        text:"Lots"
                    }
                    TxtFiled{
                        id:text6
                        readOnly: true
                        width: parent.width * 1.45
                    }
                }   Row{
                    height: parent.height/20
                    width: parent.width/2.3
                    spacing: parent.width/10
                    ERect{
                        width: parent.width *0.6
                        text:"Month"
                    }
                    TxtFiled{
                        id:text7
                        width: parent.width *0.61
                        readOnly: true
                        placeholderText: "Start date"
                        //text: cal3.selectedDate
                        onPressed: {
                            cal3.open()
                        }
                    }
                    TxtFiled{
                        id:text8
                        readOnly: true
                        width: parent.width *0.61
                        placeholderText: "End date"
                        //text: cal4.selectedDate
                        onPressed: {
                            cal4.open()
                        }
                    }
                }

                Row{
                    height: parent.height/20
                    width: parent.width/2.3
                    spacing: parent.width/10
                    ERect{
                        width: parent.width *0.6
                        text:"Current lots usage"
                    }
                    TxtFiled{
                        id:text9
                        width: parent.width * 1.45
                        onEditingFinished: {
                            text10.text=parseFloat(parseFloat(text6.text)-parseFloat(text9.text)).toFixed(2);
                            var r=parseFloat(parseFloat(text10.text) * parseFloat(comb6.currentText)).toFixed(2)
                            text11.text=Number(r).toLocaleString(Qt.locale())
                        }
                    }
                }
                Row{
                    height: parent.height/20
                    width: parent.width/2.3
                    spacing: parent.width/10
                    ERect{
                        width: parent.width *0.6
                        text:"Remaining Avl lots"
                    }
                    TxtFiled{
                        id:text10
                        readOnly: true
                        width: parent.width * 1.45
                    }
                }
                Row{
                    height: parent.height/20
                    width: parent.width/2.3
                    spacing: parent.width/10
                    ERect{
                        width: parent.width *0.6
                        text:"Remaining PO Amount"
                    }
                    TxtFiled{
                        id:text11
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
                              if(combo.currentIndex!=-2 && text2.text!="" && text3.text!="" && text4.text!="" && text5.text!="" && text6.text!="" && text7.text!="" && text8.text!="" && text9.text!="" && text10.text!="" && text11.text!="")
                              {
                                tmodell.addtime(combo.currentText,text2.text,text3.text,text4.text,text5.text,text6.text,text7.text,text8.text,text9.text,text10.text,text11.text,true);
                                modell.updatelots(combo.currentText,text10.text)

                                messageDialog.title="Confirmation"
                                messageDialog.text = "Records inserted successfully"
                                messageDialog.open()

                                text2.clear();text3.clear();text4.clear();text5.clear();text6.clear();
                                text7.clear();text8.clear();text9.clear();text10.clear();text11.clear();
                                combo.currentIndex=-2
                              }else{
                                  messageDialog.title="Alert"
                                  messageDialog.text = "All fields must be filled"
                                  messageDialog.open()
                              }
                            }
                        }
                    }
                }
            }
        }
    }
}


