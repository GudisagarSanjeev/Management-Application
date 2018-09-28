import QtQuick 2.9
import QtQuick.Controls 1.4 as N
import QtQuick.Controls 2.2 as O
import QtQuick.Controls.Styles 1.4
import "ExternalJavaScriptFile.js" as Capp

Row{
    id:view
    width:parent.width ;


    property string f;
    property string s;

    signal sendDate(string fdate)
    signal sendDayDate(string fddate)
    signal sendsecDate(string fsdate)
    signal sendsecDayDate(string fsddate)

    onSendDate: {
        startday.text = fdate
    }
    onSendsecDate: {
        endday.text = fsdate
    }
    onSendDayDate: {
        f=fddate
    }
    onSendsecDayDate: {
        s=fsddate
    }

    OfficeManagerLeaveStartCalenderPopUp{
        id:startdate
    }
    OfficeManagerLeaveSecondCalenderPopup{
        id:enddate
    }

    Text{
        width:parent.width/8;
        text:empid
        font.pixelSize: parent.width * 0.011
        color:"white"
        font.family: "segoe"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    Text{
        width:parent.width/6;
        text:firstname +" "+lastname
        font.pixelSize: parent.width * 0.011
        color:"white"
        font.family: "segoe"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    N.TextField{
        id:noofdays
        width:parent.width/10;
        height: parent.height * 0.95
        readOnly: true
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        text:leavenos
        MouseArea{
            anchors.fill: parent
            onClicked: {
                filter.dataa(empid)
                popup.open()
            }
        }
    }


    Row{
        width:parent.width/4;
        height: parent.height * 0.95
        spacing:parent.width * 0.008
        Image{
            id:startday1
            height: parent.height
            width:parent.width * 0.06
            source:"qrc:/Images/calenderIcon.ico"
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    startdate.open()
                }
            }
        }

        O.TextField{
            id:startday
            placeholderText: "StartDate"
            width:parent.width * 0.4
            height: parent.height
            font.family: "segoe"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
        Image{
            id:endday1
            width:parent.width * 0.06
            height: parent.height
            source:"qrc:/Images/calenderIcon.ico"
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    enddate.open()
                }
            }
        }
        O.TextField{
            id:endday
            placeholderText: "EndDate"
            width:parent.width * 0.4
            height: parent.height
            font.family: "segoe"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }

    O.TextField{
        id:remark
        width:parent.width/4;
        height: parent.height * 0.95
        font.family: "segoe"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
    N.Button{
        width:parent.width/8;
        text:"Submit"
        onClicked: {
            var holdday=noofdays.text
            noofdays.text=Capp.dateDiffInDays(f,s)


            if(noofdays.text==""){
                noofdays.text= (holdday+parseInt(noofdays.text))+ 1
            }else{
                noofdays.text=(parseInt(holdday)+parseInt(noofdays.text))+ 1
            }

            emp.updateLeaveNos(empid,noofdays.text)


            leavemodel.addLeave(firstname,noofdays.text,startday.text,endday.text,remark.text,empid,true)
            startday.clear();endday.clear();remark.clear();

            messageDialog.title="Information"
            messageDialog.text="Submitted, Click on number of days for information"
            messageDialog.open()
        }
    }
}



