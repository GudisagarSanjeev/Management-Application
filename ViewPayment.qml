import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Dialogs 1.3
Rectangle {
    anchors.fill: parent
    color: "#D9FAFF"
    ViewPaymentHeader{
        id:header
    }

    Rectangle {
        height: parent.height*15/16
        width: parent.width
        anchors.top: header.bottom

        ListView{
            //            height: parent.height*0.8
            //            width: parent.width
            width: parent.width
            height: parent.height
            spacing: parent.height * 0.015

            model:pay
            delegate: PaymentDelegate{}
        }
    }


}


