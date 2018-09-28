import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.3 as N
import QtQuick.Dialogs 1.3
import QtQuick.Controls 1.4 as O
import "ExternalJavaScriptFile.js" as Fun

Rectangle {
    id:timee
    anchors.fill: parent
    color: "gray"
    DialogBox{
        id:messageDialog
        height: parent.height/3
        width: parent.width/3.5
        y:  parent.height/4-height/4
        x:parent.width/2.5-width/2.5
    }

    Row{
        width: parent.width
        height: parent.height
        Rectangle{
            width: parent.width * 0.3
            height: parent.height* 0.4
            color:"transparent"
            Column{
                height: parent.height * 0.6
                width: parent.width * 0.6
                spacing: parent.height * 0.05
                anchors.centerIn: parent
                Rectangle{
                    id:r
                    height: parent.height * 0.95
                    width: parent.width
                    Image{
                        id:img
                        mipmap: true
                        smooth:true
                        anchors.fill: parent
                    }
                    Image{
                        id:landiMge
                        height: parent.height
                        width: parent.width
                        anchors.centerIn: parent
                        source:"qrc:/Images/addProfile.png"
                        MouseArea{
                            anchors.fill: parent
                            onClicked: {
                                fileDialog.open()
                            }
                        }
                    }
                    FileDialog {
                        id: fileDialog
                        visible: false
                        nameFilters: [ "Image files (*.jpg *.png)" ]
                        title: "Please choose a file"
                        folder: shortcuts.pictures
                        onAccepted: {
                            landiMge.visible=false
                            img.source=fileDialog.fileUrl
                        }
                    }
                }

            }

        }
        Rectangle{
            width: parent.width * 0.7
            height: parent.height* 0.95
            color: "transparent"
            Rectangle{
                width: parent.width
                height: parent.height * 0.9
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
                            text:"Employee id"
                        }
                        TxtFiled{
                            id:text0
                            maximumLength: 16
                            width: parent.width
                            //placeholderText: "choose employee id"
                        }
                    }
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
                            width: parent.width
                            maximumLength: 16
                            //placeholderText: "enter first name"
                            onEditingFinished: {
                                text1.text=Fun.capitalize(text1.text)
                            }
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
                            width: parent.width
                            id:text2
                            maximumLength: 16
                            //placeholderText: "enter last name"
                            onEditingFinished: {
                                text2.text=Fun.capitalize(text2.text)
                            }
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
                            width: parent.width
                            id:text3
                            maximumLength: 16
                            //placeholderText: "enter father name"
                            onEditingFinished: {
                                text3.text=Fun.capitalize(text3.text)
                            }
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
                            width: parent.width
                            maximumLength: 36
                            //placeholderText: "enter address line1"
                            onEditingFinished: {
                                text4.text=Fun.capitalize(text4.text)
                            }
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
                            width: parent.width
                            maximumLength: 36
                            //placeholderText: "enter address line2"
                            onEditingFinished: {
                                text41.text=Fun.capitalize(text41.text)
                            }
                        }
                    } Row{
                        height: parent.height/20
                        width: parent.width/2.3
                        spacing: parent.width/10
                        ERect{
                            width: parent.width *0.6
                            text:"Location"
                        }
                        TxtFiled{
                            id:text5
                            width: parent.width
                            maximumLength: 16
                            //placeholderText: "enter employee location"
                            onEditingFinished: {
                                text5.text=Fun.capitalize(text5.text)
                            }
                        }
                    }

                    Row{
                        height: parent.height/20
                        width: parent.width/2.3
                        spacing: parent.width/10
                        ERect{
                            width: parent.width *0.6
                            text:"Zip code"
                        }
                        TxtFiled{
                            id:text6
                            width: parent.width
                            maximumLength: 8
                            //placeholderText: "enter location pincode"
                            validator: RegExpValidator { regExp: /[A-Z_0-9]+/}
                        }
                    }
                    Row{
                        height: parent.height/20
                        width: parent.width/2.3
                        spacing: parent.width/10
                        ERect{
                            width: parent.width *0.6
                            text:"State"

                        }
                        O.ComboBox{
                            id:text7
                            width: parent.width
                            height: parent.height *0.9
                            currentIndex: -2
                            model: ListModel {
                                id: cbItems
                                ListElement { text: "Andra Pradesh"}
                                ListElement { text: "Arunachal Pradesh"}
                                ListElement { text: "Assam"}
                                ListElement { text: "Bihar"}
                                ListElement { text: "Chhattisgrh"}
                                ListElement { text: "Goa"}
                                ListElement { text: "Gujarat"}
                                ListElement { text: "Haryana"}
                                ListElement { text: "Himachal Pradesh"}
                                ListElement { text: "Jammu and Kashmir"}
                                ListElement { text: "Jharkhand"}
                                ListElement { text: "Karnataka"}
                                ListElement { text: "Kerala"}
                                ListElement { text: "Madhya Pradesh"}
                                ListElement { text: "Maharashtra"}
                                ListElement { text: "Manipur"}
                                ListElement { text: "Meghalaya"}
                                ListElement { text: "Mizorom"}
                                ListElement { text: "Nagaland"}
                                ListElement { text: "Odisha"}
                                ListElement { text: "Punjab"}
                                ListElement { text: "Rajasthan"}
                                ListElement { text: "Tamilnadu"}
                                ListElement { text: "Telangana"}
                                ListElement { text: "Tripura"}
                                ListElement { text: "Uttarakhand"}
                                ListElement { text: "Uttar Pradesh"}
                                ListElement { text: "West Bengal"}

                            }
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
                            maximumLength: 35
                            width: parent.width
                            //placeholderText: "enter employee email"
                            onEditingFinished: {
                                var mail=Fun.validateEmail(text8.text)
                                console.log(mail)
                                if(mail===false){
                                    submit.enabled=false
                                    messageDialog.title="Alert"
                                    messageDialog.text = "Enter Valid email"
                                    messageDialog.open()
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
                            text:"Phone/Mobile"
                        }
                        TxtFiled{
                            id:text9
                            width: parent.width
                            maximumLength: 12
                            //placeholderText: "enter employee phone number"
                            validator: RegExpValidator { regExp: /[A-Z_0-9]+/}
//                            onEditingFinished: {
//                                var phone=Fun.validateEmail(text9.text)
//                                console.log(phone)
//                                if(phone===false){
//                                    submit.enabled=false
//                                    messageDialog.title="Alert"
//                                    messageDialog.text = "Enter Valid phone number"
//                                    messageDialog.open()
//                                }
//                            }
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
                            maximumLength: 12
                            width: parent.width
                            //placeholderText: "enter emergency contact"
                            validator: RegExpValidator { regExp: /[A-Z_0-9]+/}
                        }
                    }


                    Row{
                        height: parent.height/20
                        width: parent.width
                        spacing: parent.width/10
                        ERect{
                            id:submit
                            text:"Submit"
                            color:"#606470"
                            width: parent.width *0.26

                            MouseArea{
                                anchors.fill: parent
                                hoverEnabled: true
                                onEntered: submit.opacity=0.5
                                onExited: submit.opacity=1
                                onClicked: {

                                    if(text0.text !="" && text1.text!="" && text2.text != "" && text3.text!="" && text4.text!= "" && text5.text != "" && text6.text != "" && text7.text!="" && text8.text!="" && text9.text!="" && text10.text!="" /*&&img.source!=""*/)
                                    {

                                        emp.addemployee(text0.text,text1.text,text2.text,text3.text,text4.text,text41.text,text5.text,text6.text,text7.currentText,text8.text,text9.text,text10.text,img.source,0,true);
                                        messageDialog.text = "Employee Created successfully"
                                        messageDialog.open()

                                        text0.clear();text1.clear();text2.clear();text3.clear();text4.clear();text41.clear();
                                        text5.clear();text6.clear();img.source=""; landiMge.visible=true
                                        text7.currentIndex=-2;text8.clear();text9.clear();text10.clear()
                                    }else{

                                        messageDialog.text = "All fileds are mandatory"
                                        messageDialog.open()
                                    }
                                }
                            }
                        }
                        ERect{
                            id:clear
                            text:"Clear"
                            color:"#606470"
                            width: parent.width *0.26
                            MouseArea{
                                anchors.fill: parent
                                onClicked: {
                                    text0.clear();text1.clear();text2.clear();text3.clear();text4.clear();text41.clear();
                                    text5.clear();text6.clear();img.source=""
                                    text7.currentIndex=-2;text8.clear();text9.clear();text10.clear()
                                }
                            }
                        }
                    }
                }
            }

        }

    }
}
