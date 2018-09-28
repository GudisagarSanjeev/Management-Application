import QtQuick 2.0
import QtQuick.Controls 2.2 as N
import QtQuick.Controls 1.4 as O
import QtQuick.Controls.Styles 1.4

N.Popup {
    id: popup2
    y:  20 //parent.height/4-height/4
    x:parent.width/2.5-width/2.5
//    width: parent.width * 0.7
//    height: parent.height * 20
    width:600
    height: 400
    modal: true
    focus: true
    closePolicy: N.Popup.CloseOnEscape | N.Popup.CloseOnPressOutsideParent
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
                var formatdate
                var formatdateDay2
                var month_names =["Jan","Feb","Mar",
                                  "Apr","May","Jun",
                                  "Jul","Aug","Sep",
                                  "Oct","Nov","Dec"];


                formatdate = (date.getDate()<10 ? "0" +date.getDate():date.getDate())+"-"+(month_names[date.getMonth()])+"-"+date.getFullYear()

                formatdateDay2=(date.getFullYear()+","+((date.getMonth()+1)<10 ? "0" +(date.getMonth()+1):(date.getMonth()+1))+","+(date.getDate()<10 ? "0" +date.getDate():date.getDate()))
                sendsecDate(formatdate)
                sendsecDayDate(formatdateDay2)
                popup2.close()
            }
        }

    }
}
