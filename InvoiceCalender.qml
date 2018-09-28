import QtQuick.Controls 2.3 as N
import QtQuick.Controls 1.4 as O
import QtQuick.Controls.Styles 1.4
import QtQuick 2.9

N.Dialog{
    id:popup
    height: parent.height/1.7
    width: parent.width/2.2
    y:  parent.height/2-height/2
    x:parent.width/2-width/2

    standardButtons: N.Dialog.Close |N.Dialog.Ok


    modal:true
    closePolicy: N.Popup.CloseOnEscape

    Rectangle {
        anchors.fill: parent
        color:"#404B69"

        O.Calendar {
            anchors.centerIn: parent
            anchors.fill: parent

            style: CalendarStyle {
                gridVisible: false
                dayDelegate: Rectangle {
                    gradient: Gradient {
                        GradientStop {
                            position: 0.00
                            color: styleData.selected ? "#111" : (styleData.visibleMonth && styleData.valid ? "#444" : "#666");
                        }
                        GradientStop {
                            position: 1.00
                            color: styleData.selected ? "#444" : (styleData.visibleMonth && styleData.valid ? "#111" : "#666");
                        }
                        GradientStop {
                            position: 1.00
                            color: styleData.selected ? "#777" : (styleData.visibleMonth && styleData.valid ? "#111" : "#666");
                        }
                    }

                    O.Label {
                        text: styleData.date.getDate()
                        anchors.centerIn: parent
                        color: styleData.valid ? "white" : "grey"
                    }

                    Rectangle {
                        width: parent.width
                        height: 1
                        color: "#555"
                        anchors.bottom: parent.bottom
                    }

                    Rectangle {
                        width: 1
                        height: parent.height
                        color: "#555"
                        anchors.right: parent.right
                    }
                }
            }
            onClicked: {
                var InvoiceDate

                var month_names =["Jan","Feb","Mar",
                                  "Apr","May","Jun",
                                  "Jul","Aug","Sep",
                                  "Oct","Nov","Dec"];


                InvoiceDate = (date.getDate()<10 ? "0" +date.getDate():date.getDate())+"-"+(month_names[date.getMonth()])+"-"+date.getFullYear()

                sendInvoiceDate(InvoiceDate)
                popup.close()
            }
        }

    }
}



