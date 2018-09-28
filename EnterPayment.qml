import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.2
import QtQuick.Controls 2.3 as N
import QtQuick.Dialogs 1.3
Rectangle {
    id:addpaymentt
    anchors.fill: parent
    color: "#D9FAFF"

    DialogBox{
        id:messageDialog
        height: parent.height/2.5
        width: parent.width/3
        y:  parent.height/2.5-height/2
        x:parent.width/2-width/2
    }

    Rectangle{
        //   property alias string invoicenos;
        height: parent.height*0.8
        width: parent.width*0.8
        anchors.centerIn: parent
        color:"transparent"
        Column{
            width: parent.width *0.4
            height: parent.height*0.3
            anchors.centerIn: parent

            Row{
                spacing: parent.height/4
                width: parent.width
                height: parent.height/4
                anchors.horizontalCenter: parent.horizontalCenter
                Rectangle{
                    anchors.verticalCenter: parent.verticalCenter
                    width: parent.width/2.5
                    height: parent.height * 0.80
                    color:"#1B3C59"
                    border.color: "black"
                    Text{
                        text:"Recieved Amount"
                        font.pixelSize: Math.min(parent.height/2,parent.width/12)
                        wrapMode: Text.WordWrap
                        font.family: "segoe"
                        anchors.centerIn: parent
                        color:"white"
                    }
                }
                TextField{
                    id:textt1
                    font.pixelSize: Math.min(parent.height/2,parent.width/12)
                    width: parent.width/2.5
                    height: parent.height * 0.80
                    anchors.verticalCenter: parent.verticalCenter
                    maximumLength: 16
                }
            }
            Row{
                spacing: parent.height/4
                width: parent.width
                height: parent.height/4
                anchors.horizontalCenter: parent.horizontalCenter
                Rectangle{
                    anchors.verticalCenter: parent.verticalCenter
                    width: parent.width/2.5
                    height: parent.height * 0.80
                    color:"#1B3C59"
                    border.color: "black"
                    Text{
                        text:"Invoice number"
                        font.pixelSize: Math.min(parent.height/2,parent.width/12)
                        wrapMode: Text.WordWrap
                        font.family: "segoe"
                        anchors.centerIn: parent
                        color:"white"
                    }
                }
                TextField{
                    id:textt2
                    width: parent.width/2.5
                    height: parent.height * 0.80
                    font.pixelSize: Math.min(parent.height/3,parent.width/16)
                    anchors.verticalCenter: parent.verticalCenter
                    maximumLength: 16
                    enabled: false
                }
                N.ComboBox{
                    id:combo
                    width: parent.width/5
                    height:parent.height *0.70
                    model:payproxy
                    textRole: "ivnoo"
                    font.pixelSize: Math.min(parent.height/3,parent.width/12)
                    currentIndex: -2
                    onCurrentTextChanged: {
                        textt2.text+=combo.currentText+";"
                    }

                }
                N.ComboBox{
                    id:comb1
                    model: payproxy
                    textRole:"total"
                    visible: false
                    currentIndex:combo.currentIndex
                    onCurrentTextChanged:{
                        //                        ip4.text=comb1.currentText
                        //                        paymentModel.savedData = comb1.currentText
                        //                        ip4.text= paymentModel.result.toString()
                        console.log(comb1.currentText+"Current text")

                        textt3.text= parseInt(textt3.text) + parseInt(comb1.currentText)
                        //store = parseInt(tp3.text)
                    }
                }

            }
            Row{
                spacing: parent.height/4
                width: parent.width
                height: parent.height/4
                anchors.horizontalCenter: parent.horizontalCenter
                Rectangle{
                    anchors.verticalCenter: parent.verticalCenter
                    width: parent.width/2.5
                    height: parent.height * 0.80
                    color:"#1B3C59"
                    border.color: "black"
                    enabled: false
                    Text{
                        text:"Amount"
                        font.pixelSize: Math.min(parent.height/2,parent.width/12)
                        wrapMode: Text.WordWrap
                        font.family: "segoe"
                        anchors.centerIn: parent
                        color:"white"
                    }
                }
                TextField{
                    id:textt3
                    text:"0"
                    font.pixelSize: Math.min(parent.height/3,parent.width/12)
                    width: parent.width/2.5
                    height: parent.height * 0.80
                    anchors.verticalCenter: parent.verticalCenter
                    maximumLength: 16
                    enabled: false
                }
            }
            Row{
                spacing: parent.height/4
                width: parent.width
                height: parent.height/4
                anchors.horizontalCenter: parent.horizontalCenter
                Rectangle{
                    anchors.verticalCenter: parent.verticalCenter
                    width: parent.width/2.5
                    height: parent.height *0.80
                    color: "#606470"

                    Text{
                        id:submit
                        text:"Submit"
                        font.pixelSize: Math.min(parent.height/3,parent.width/12)
                        wrapMode: Text.WordWrap
                        font.family: "segoe"
                        anchors.centerIn: parent
                        color:"white"
                    }

                    MouseArea{
                        anchors.fill: parent
                        hoverEnabled: true
                        onEntered: submit.opacity=0.5
                        onExited: submit.opacity=1
                        onClicked: {
                            if(textt1.text==textt3.text){
                                var invoicenos=textt2.text
                                var invo=invoicenos.split(";")
                                for(var i=0;i<(invo.length)-1;i++){
                                    var s=invo[i]
                                    pay.invonosList(s);
                                    payproxy.deleteInvoicenos(s)
                                    mod.updateStatus(s)

                                    textt1.clear()
                                    textt3.text="0"
                                    textt2.clear()
                                }
                                combo.currentIndex=-2
                                textt1.clear()
                                textt3.text="0"
                                textt2.clear()

                                messageDialog.text="Payment Confirmed"
                                messageDialog.open()
                                textt1.clear()

                            }else{
                                combo.currentIndex=-2
                                textt1.clear()
                                textt3.text="0"
                                textt2.clear()
                                //combo.currentIndex=-2
                                messageDialog.text="Payment Mismatch"
                                messageDialog.open()


                            }
                        }
                    }
                }
                Rectangle{
                    id:back
                    anchors.verticalCenter: parent.verticalCenter
                    width: parent.width/2.5
                    height: parent.height * 0.80
                    color: "#606470"
                    Text{
                        text:"Cancle"
                        font.pixelSize: Math.min(parent.height/2,parent.width/12)
                        wrapMode: Text.WordWrap
                        font.family: "segoe"
                        anchors.centerIn: parent
                        color:"white"
                    }

                    MouseArea{
                        anchors.fill: parent
                        hoverEnabled: true
                        onEntered: back.opacity=0.5
                        onExited: back.opacity=1
                        onClicked: {
                            combo.currentIndex=-2
                            textt1.clear()
                            textt3.text="0"
                            textt2.clear()
                            messageDialog.title="Alert"
                            messageDialog.text="Payment Cancled"
                            messageDialog.open()
                        }
                    }
                }
            }
        }
    }
}
