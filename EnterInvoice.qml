import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.3 as N
import QtQuick.Controls 2.0
import QtQuick.Dialogs 1.3
import QtQuick.Controls 1.4 as O

Rectangle {
    property int  tdsamout;
    property double saleamt;
    property double invoiceamt;
    DialogBox{
        id:messageDialog
        height: parent.height/2.5
        width: parent.width/3
        y:  parent.height/2.5-height/2
        x:parent.width/2-width/2
    }
    signal sendInvoiceDate(string Idate)

    onSendInvoiceDate: {
        text2.text=Idate
    }

    InvoiceCalender{
        id:cal
    }

    anchors.fill: parent
    color: "#D9FAFF"

    Column{
        anchors.fill: parent
        Rectangle{
            height: parent.height *0.85
            width: parent.width
            color:"#D9FAFF"
            Grid{
                columns: 2
                rows:2
                anchors.horizontalCenter: parent.horizontalCenter
                height: parent.height
                width: parent.width

                Rectangle{
                    id:r1
                    width: parent.width/2
                    height: parent.height/2
                    color:"#D9FAFF"

                    Rectangle {
                        anchors.centerIn: parent
                        width: parent.width * 0.85
                        height: parent.height*0.8
                        color:"#606470"
                        radius: 10
                        Row{
                            anchors.centerIn: parent
                            height: parent.height/3
                            width:parent.width *0.8


                            Column{
                                height: parent.height
                                width: parent.width/2
                                spacing: parent.height/10
                                LabelRect{
                                    id:rect1
                                    text:"Enter invoice number"

                                }
                                N.ComboBox{
                                    id:combo
                                    height: parent.height *0.9
                                    width: parent.width * 1.45
                                    model:mod
                                    visible: false
                                    textRole: "ivno"
                                    currentIndex: -2
                                }
                                LabelRect{
                                    id:rect2
                                    text:"Enter Date"
                                }

                            }
                            Column{
                                height: parent.height
                                width: parent.width/2
                                spacing: parent.height/10
                                TxtField{
                                    id:text1
                                    cursorVisible: true
                                    onTextEdited: {
                                        text2.enabled=true
                                    }

                                    onEditingFinished: {
                                        for(var i=combo.currentIndex;i<=combo.count;i++){
                                            if(combo.currentText==text1.text){
                                                messageDialog.text=" Invoice number already Exist"
                                                messageDialog.open()
                                                text1.clear()
                                                cal.visible=false

                                            }else{
                                                combo.currentIndex++;
                                            }
                                        }
                                    }

                                    onPressed:  {
                                        rect1.opacity=.5
                                        rect2.opacity=1
                                        rect3.opacity=1
                                        //rect4.opacity=1
                                        rect5.opacity=1
                                        rect6.opacity=1
                                        rect7.opacity=1
                                        rect8.opacity=1
                                        rect9.opacity=1
                                        rect10.opacity=1
                                        rect11.opacity=1
                                        rect12.opacity=1
                                        rect13.opacity=1


                                    }
                                }


                                TxtField{
                                    id:text2
                                    enabled: false


                                    onPressed: {
                                        text3.enabled=true
                                        //text2.enabled=false
                                        rect1.opacity=1
                                        rect2.opacity=0.5
                                        rect3.opacity=1
                                        //rect4.opacity=1
                                        rect5.opacity=1
                                        rect6.opacity=1
                                        rect7.opacity=1
                                        rect8.opacity=1
                                        rect9.opacity=1
                                        rect10.opacity=1
                                        rect11.opacity=1
                                        rect12.opacity=1
                                        rect13.opacity=1
                                        cal.open()
                                    }

                                }
                                //                                LabelRect{
                                //                                    id:editcal
                                //                                    visible: false
                                //                                    color:"#606470"
                                //                                    border.color: "red"
                                //                                    width: parent.width*0.15
                                //                                    height: parent.height/3
                                //                                    Image{
                                //                                        width: parent.width
                                //                                        height: parent.height
                                //                                        source: "qrc:/Images/calendar.png"

                                //                                        MouseArea{
                                //                                            anchors.fill: parent
                                //                                            hoverEnabled: true
                                //                                            onClicked: {
                                //                                                cal.open()
                                //                                            }
                                //                                        }
                                //                                    }
                                //                                }
                            }
                        }


                    }
                }


                Rectangle{
                    width: parent.width/2
                    height: parent.height/2
                    color:"#D9FAFF"

                    Rectangle {
                        anchors.centerIn: parent
                        width: parent.width * 0.8
                        height: parent.height*0.8
                        color:"#606470"
                        radius: 10
                        Row{
                            anchors.centerIn: parent
                            height: parent.height/3
                            width:parent.width *0.8


                            Column{
                                height: parent.height
                                width: parent.width/2
                                spacing: parent.height/10

                                LabelRect{
                                    id:rect3
                                    text:"Enter amount"
                                }
                                LabelRect{
                                    id:rect4
                                    text:"Company name"
                                }
                            }

                            Column{
                                height: parent.height
                                width: parent.width/2
                                spacing: parent.height/10

                                TxtField{
                                    id:text3
                                    enabled: false
                                    validator: RegExpValidator { regExp: /[A-Z_0-9]+/}maximumLength: 16
                                    onTextChanged: {
                                        text4.enabled=true
                                    }

                                    onPressed:  {
                                        rect1.opacity=1
                                        rect2.opacity=1
                                        rect3.opacity=0.5
                                        //rect4.opacity=1
                                        rect5.opacity=1
                                        rect6.opacity=1
                                        rect7.opacity=1
                                        rect8.opacity=1
                                        rect9.opacity=1
                                        rect10.opacity=1
                                        rect11.opacity=1
                                        rect12.opacity=1
                                        rect13.opacity=1
                                    }

                                }
                                TxtField{
                                    id:text4
                                    enabled: false
                                    maximumLength: 16
                                    onTextChanged: {
                                        combo1.enabled=true
                                        combo2.enabled=true
                                    }
                                    onPressed:  {
                                        rect1.opacity=1
                                        rect2.opacity=1
                                        rect3.opacity=1
                                        rect4.opacity=0.5
                                        rect5.opacity=1
                                        rect6.opacity=1
                                        rect7.opacity=1
                                        rect8.opacity=1
                                        rect9.opacity=1
                                        rect10.opacity=1
                                        rect11.opacity=1
                                        rect12.opacity=1
                                        rect13.opacity=1
                                    }
                                }
                            }
                        }
                    }


                }
                Rectangle{
                    width: parent.width/2
                    height: parent.height/2
                    color:"#D9FAFF"
                    Rectangle {
                        anchors.centerIn: parent
                        width: parent.width * 0.85
                        height: parent.height*0.8
                        color:"#606470"
                        radius: 10
                        Row{
                            anchors.top:parent.top
                            height: parent.height/3
                            width:parent.width *0.8
                            anchors.topMargin: parent.height/10
                            anchors.horizontalCenter:parent.horizontalCenter


                            Column{
                                height: parent.height
                                width: parent.width/2
                                spacing: parent.height/10
                                LabelRect{
                                    id:crect1
                                    text:"Inside State bill"
                                }
                                LabelRect{
                                    id:crect2
                                    text:"Outside State bill"
                                }
                                LabelRect{
                                    id:rect5
                                    text:"SGST"
                                }
                                LabelRect{
                                    id:rect6
                                    text:"CGST"
                                }
                                LabelRect{
                                    id:rect7
                                    text:"IGST"
                                }
                                LabelRect{
                                    id:rect8
                                    text:"TDS"
                                }
                            }
                            Column{
                                height: parent.height
                                width: parent.width/2
                                spacing: parent.height/10
                                N.RadioButton{
                                    id:combo1
                                    enabled: false
                                    width: parent.width*0.7
                                    height: parent.height/3



                                    onCheckedChanged: {

                                        if(combo1.checked==true){
                                            crect1.opacity=.5
                                            crect2.opacity=1
                                            rect2.opacity=1
                                            rect3.opacity=1
                                            rect5.opacity=1
                                            rect6.opacity=1
                                            rect1.opacity=1
                                            rect7.opacity=0.5
                                            rect8.opacity=1
                                            rect9.opacity=1
                                            rect10.opacity=1
                                            rect11.opacity=1
                                            rect12.opacity=1
                                            rect13.opacity=1
                                        }
                                        if(combo1.checked==true){
                                            combo2.checked=false
                                        }
                                        if(combo1.checked==true && combo2.checked==false){
                                            text5.text="9%";text6.text="9%"
                                            text7.text="0"
                                            text7.enabled=false
                                            text5.enabled=true
                                            text6.enabled=true

                                            text9.enabled=true
                                            text10.enabled=true
                                            text11.enabled=false


                                            text9.text=parseFloat((parseInt(text3.text)*9)/100).toFixed(2)
                                            text10.text=parseFloat((parseInt(text3.text)*9)/100).toFixed(2)
                                            text11.text="0"
                                            text12.text=parseFloat(parseInt(text9.text)+parseInt(text10.text)).toFixed(2)
                                            tdsamout=parseFloat((parseInt(text3.text)*10)/100).toFixed(2)

                                            text13.text=parseFloat((parseInt(text3.text)+parseInt(text12.text))).toFixed(2)
                                            var tenpercent=parseFloat(text13.text)* 0.1
                                            console.log(tenpercent)
                                            text14.text=parseFloat(parseFloat(text13.text) - (parseFloat(text3.text) * 0.1)).toFixed(2)
                                            text15.text=parseFloat(parseFloat(text13.text) - tenpercent).toFixed(2)
                                        }
                                        if(combo1.checked==true){
                                            text8.text="10%"
                                        }
                                    }

                                }

                                N.RadioButton{
                                    id:combo2
                                    enabled: false
                                    width: parent.width*0.7
                                    height: parent.height/3
                                    onCheckedChanged: {

                                        if(combo2.checked==true){
                                            combo1.checked=false


                                            crect2.opacity=.5
                                            crect1.opacity=1
                                            rect2.opacity=1
                                            rect3.opacity=1
                                            //rect4.opacity=1
                                            rect5.opacity=0.5
                                            rect6.opacity=0.5
                                            rect1.opacity=1
                                            rect7.opacity=1
                                            rect8.opacity=1
                                            rect9.opacity=1
                                            rect10.opacity=1
                                            rect11.opacity=1
                                            rect12.opacity=1
                                            rect13.opacity=1

                                        }
                                        if(combo2.checked==true){
                                            text7.text="18%";
                                            text5.text="";text6.text=""
                                            text5.enabled=false
                                            text6.enabled=false
                                            text7.enabled=true

                                        }
                                        if(combo2.checked==true){

                                            text9.text="0"
                                            text10.text="0"

                                            text9.enabled=false
                                            text10.enabled=false

                                            text11.enabled=true
                                            text11.text=parseFloat((parseInt(text3.text)*18)/100).toFixed(2)
                                            text12.text=text11.text
                                            tdsamout=parseFloat((parseInt(text3.text)*10)/100).toFixed(2)
                                            text13.text=parseFloat((parseInt(text3.text)+parseInt(text12.text))).toFixed(2)
                                            var tenpercent=parseFloat(text13.text)* 0.1
                                            text14.text=parseFloat(parseFloat(text13.text) - (parseFloat(text3.text) * 0.1)).toFixed(2)
                                            text15.text=parseFloat(parseFloat(text13.text) - tenpercent).toFixed(2)
                                        }
                                    }
                                }

                                LabelRect{
                                    color:"transparent"
                                    TxtField{
                                        id:text5
                                        font.pixelSize: Math.min(parent.height/2,parent.width/2)
                                        anchors.centerIn: parent
                                        width: parent.width/4
                                        height:parent.height
                                        validator: RegExpValidator { regExp: /[A-Z_0-9]+/}maximumLength: 16
                                        readOnly: true
                                        enabled: false

                                        onPressed:{
                                            rect1.opacity=1
                                            rect2.opacity=1
                                            rect3.opacity=1
                                            //rect4.opacity=1
                                            //                        rect5.opacity=0.5
                                            //                        rect6.opacity=1
                                            //                        rect7.opacity=1
                                            rect8.opacity=1
                                            rect9.opacity=1
                                            rect10.opacity=1
                                            rect11.opacity=1
                                            rect12.opacity=1
                                            rect13.opacity=1
                                        }
                                    }
                                }

                                LabelRect{
                                    color:"transparent"
                                    TxtField{
                                        id:text6
                                        font.pixelSize: Math.min(parent.height/2,parent.width/2)
                                        anchors.centerIn: parent
                                        width: parent.width/4
                                        height:parent.height
                                        validator: RegExpValidator { regExp: /[A-Z_0-9]+/}maximumLength: 16
                                        readOnly: true
                                        enabled: false
                                        onPressed:{
                                            rect1.opacity=1
                                            rect2.opacity=1
                                            rect3.opacity=1
                                            //rect4.opacity=1
                                            //                        rect5.opacity=1
                                            //                        rect6.opacity=0.5
                                            //                        rect7.opacity=1
                                            rect8.opacity=1
                                            rect9.opacity=1
                                            rect10.opacity=1
                                            rect11.opacity=1
                                            rect12.opacity=1
                                            rect13.opacity=1
                                        }
                                    }
                                }

                                LabelRect{
                                    color:"transparent"
                                    TxtField{
                                        id:text7
                                        anchors.centerIn: parent
                                        width: parent.width/4
                                        height:parent.height
                                        font.pixelSize: Math.min(parent.height/2.5,parent.width/8)
                                        validator: RegExpValidator { regExp: /[A-Z_0-9]+/}maximumLength: 16
                                        readOnly: true
                                        enabled: false
                                        onPressed:{
                                            rect1.opacity=1
                                            rect2.opacity=1
                                            rect3.opacity=1
                                            rect8.opacity=1
                                            rect9.opacity=1
                                            rect10.opacity=1
                                            rect11.opacity=1
                                            rect12.opacity=1
                                            rect13.opacity=1
                                        }
                                    }
                                }

                                LabelRect{
                                    color:"transparent"
                                    TxtField{
                                        id:text8
                                        anchors.centerIn: parent
                                        width: parent.width/4
                                        height:parent.height
                                        font.pixelSize: Math.min(parent.height/2.5,parent.width/2)
                                        validator: RegExpValidator { regExp: /[A-Z_0-9]+/}maximumLength: 16
                                        readOnly: true
                                        enabled: false
                                    }
                                }
                            }
                        }
                    }

                }

                Rectangle{
                    width: parent.width/2
                    height: parent.height/2
                    color:"#D9FAFF"

                    Rectangle {
                        anchors.centerIn: parent
                        width: parent.width * 0.8
                        height: parent.height*0.8
                        color:"#606470"
                        radius: 10
                        Row{
                            anchors.top:parent.top
                            height: parent.height/3
                            width:parent.width *0.8
                            anchors.topMargin: parent.height/16
                            anchors.horizontalCenter:parent.horizontalCenter


                            Column{
                                height: parent.height
                                width: parent.width/2
                                spacing: parent.height/16
                                LabelRect{
                                    id:rect9
                                    text:"SGST amount"
                                }
                                LabelRect{
                                    id:rect10
                                    text:"CGST amount"
                                }
                                LabelRect{
                                    id:rect11
                                    text:"IGST amount"
                                }
                                LabelRect{
                                    id:rect12
                                    text:"Total GST"
                                }



                                Button {
                                    width: parent.width*0.7
                                    height: parent.height/3
                                    LabelRect{
                                        anchors.fill: parent
                                        id:rect13
                                        text:"Invoice Amount"
                                    }
                                    hoverEnabled: true
                                    ToolTip.delay: 1000
                                    ToolTip.timeout: 5000
                                    ToolTip.visible: hovered
                                    ToolTip.text: qsTr("Amount+Total GST")
                                }
                                Button {
                                    width: parent.width*0.7
                                    height: parent.height/3
                                    LabelRect{
                                        anchors.fill: parent
                                        id:rect14
                                        text:"TDS Sale"
                                    }
                                    hoverEnabled: true
                                    ToolTip.delay: 1000
                                    ToolTip.timeout: 5000
                                    ToolTip.visible: hovered
                                    ToolTip.text: qsTr("(Invoice Amount-10 % of Invoice Amount )")
                                }
                                Button {
                                    width: parent.width*0.7
                                    height: parent.height/3
                                    LabelRect{
                                        anchors.fill: parent
                                        id:rect15
                                        text:"TDS Invoice"
                                    }
                                    hoverEnabled: true
                                    ToolTip.delay: 1000
                                    ToolTip.timeout: 5000
                                    ToolTip.visible: hovered
                                    ToolTip.text: qsTr("(Invoice Amount-10 % of Actual Invoice)")
                                }
                            }


                            Column{
                                height: parent.height
                                width: parent.width/2
                                spacing: parent.height/16
                                TxtField{
                                    id:text9
                                    validator: RegExpValidator { regExp: /[A-Z_0-9]+/}maximumLength: 16
                                    readOnly: true
                                    enabled: false
                                }

                                TxtField{
                                    id:text10
                                    validator: RegExpValidator { regExp: /[A-Z_0-9]+/}maximumLength: 16
                                    readOnly: true
                                    enabled: false
                                }

                                TxtField{
                                    id:text11
                                    validator: RegExpValidator { regExp: /[A-Z_0-9]+/}maximumLength: 16
                                    readOnly: true
                                    enabled: false
                                }

                                TxtField{
                                    id:text12
                                    validator: RegExpValidator { regExp: /[A-Z_0-9]+/}maximumLength: 16
                                    readOnly: true
                                    enabled: false
                                }
                                TxtField{
                                    id:text13
                                    validator: RegExpValidator { regExp: /[A-Z_0-9]+/}maximumLength: 16
                                    readOnly: true
                                    enabled: false
                                }
                                Row{
                                    width: parent.width
                                    height: parent.height/3
                                    spacing: 2
                                    TxtField{
                                        id:text14
                                        width: parent.width * 0.7
                                        font.pixelSize: Math.min(parent.height/2,parent.width/2)
                                        height: parent.height
                                        validator: RegExpValidator { regExp: /[A-Z_0-9]+/}maximumLength: 16
                                        readOnly: true
                                        enabled: false
                                    }
                                    N.RadioButton{
                                        id:sale
                                        width: parent.width*0.3
                                        height: parent.height
                                        onCheckedChanged: {
                                            if(sale.checked==true){
                                                invoice.checked=false
                                            }

                                            if(sale.checked==true && invoice.checked==false){
                                                saleamt=parseFloat(text14.text)
                                                invoiceamt=0
                                            }
                                        }
                                    }
                                }


                                Row{
                                    width: parent.width
                                    height: parent.height/3
                                    spacing: 2
                                    TxtField{
                                        id:text15
                                        width: parent.width * 0.7
                                        font.pixelSize: Math.min(parent.height/2,parent.width/2)
                                        height: parent.height
                                        validator: RegExpValidator { regExp: /[A-Z_0-9]+/}maximumLength: 16
                                        readOnly: true
                                        enabled: false
                                    }
                                    N.RadioButton{
                                        id:invoice
                                        width: parent.width*0.3
                                        height: parent.height
                                        onCheckedChanged: {
                                            if(invoice.checked==true){
                                                sale.checked=false
                                            }

                                            if(invoice.checked==true){
                                                saleamt=0
                                                invoiceamt=parseFloat(text15.text)
                                            }
                                        }
                                    }
                                }

                            }
                        }
                    }

                }
            }
        }

        Rectangle{
            height: parent.height*0.1
            width:parent.width/3
            anchors.horizontalCenter: parent.horizontalCenter
            color:"transparent"
            Row{
                height: parent.height
                width:parent.width
                anchors.horizontalCenter: parent.horizontalCenter
                spacing: parent.height/10
                Rect{
                    id:save
                    text:"Submit"
                    color: "#606470"
                    width:parent.width/3.2
                    MouseArea{
                        anchors.fill: parent
                        hoverEnabled: true
                        onEntered: save.opacity=0.5
                        onExited: save.opacity=1
                        onClicked: {
                            if(text1.text!=""){
                                var s=saleamt+invoiceamt
                                mod.addinvoice(text1.text,text2.text,text3.text,text4.text,text9.text,text10.text,text11.text,text12.text,tdsamout,text13.text,saleamt.toFixed(2),invoiceamt.toFixed(2),s,true,false);
                                payproxy.addInvoiceProxy(text1.text,text2.text,text3.text,text4.text,text9.text,text10.text,text11.text,text12.text,tdsamout,text13.text,saleamt.toFixed(2),invoiceamt.toFixed(2),s,true)
                                messageDialog.text = "Records inserted successfully"
                                messageDialog.open()

                                text1.clear();text3.text="";text5.text="";text7.text="";text9.text="";
                                text2.text="";text4.text="";text6.text="";text8.text="";text10.text="";
                                text11.text="";text12.text="";text13.text="";text14.text="";text15.text="";
                                combo1.checked=false;combo2.checked=false;sale.checked=false;invoice.checked=false;

                            }else{

                                messageDialog.text = "All Fields are Mandatory"
                                messageDialog.open()
                            }
                        }
                    }
                }
                Rect{
                    id:clear
                    text:"Clear"
                    color: "#606470"
                    width:parent.width/3.2
                    MouseArea{
                        anchors.fill: parent
                        hoverEnabled: true
                        onEntered: clear.opacity=0.5
                        onExited: clear.opacity=1
                        onClicked: {
                            text1.text="";text3.text="";text5.text="";text7.text="";text9.text="";
                            text2.text="";text4.text="";text6.text="";text8.text="";text10.text="";
                            text11.text="";text12.clear();text13.text="";
                            combo1.checked=false;combo2.checked=false;
                        }
                    }
                }
                //                Rect{
                //                    id:preview
                //                    text:"Preview"
                //                    color: "#606470"
                //                    width:parent.width/3.2
                //                    MouseArea{
                //                        anchors.fill: parent
                //                        hoverEnabled: true
                //                        onEntered: preview.opacity=0.5
                //                        onExited: preview.opacity=1
                //                        onClicked: {
                //                            messageDialog.title="Messege Box"
                //                            messageDialog.text="Features in next Version"
                //                            messageDialog.open()
                //                        }
                //                    }
                //                }
            }
        }

    }
}




