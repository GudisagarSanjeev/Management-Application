import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Controls 2.3
import  QtQuick.Dialogs 1.1

Item{
    visible: true
    height: Screen.desktopAvailableHeight
    width: Screen.desktopAvailableWidth
    signal changeTitle(string title)
    signal logoutClicked

    onChangeTitle: {
        header.title = title
    }
    Rectangle {
        anchors.fill: parent

        //    Image {
        //        id: landingimage
        //        source: "qrc:/Images/Wallpaper2.png"
        //        width: parent.width
        //        height: parent.height
        //    }

        Column {
            //heade
            anchors.fill: parent
            PeopleMHeader{
                id: header
                //text:"Header"
            }

            Row{
                width: parent.width
                height: parent.height * 7/8
                //fillremaining area
                //Column {
                // height: parent.height
                //width:parent.width/5
                //button holder
                InvoiceRectComp{
                    width: parent.width * 1/8
                }
                //}
                Loader {
                    //content

                    Image {
                        id: landingimage
                        source: "qrc:/Images/Wallpaper2.png"
                        width: parent.width
                        height: parent.height
                    }
                    id:h
                    height: parent.height*4/3.7
                    width: parent.width*4/4.5

                }
            }
        }
        Component{
            id:enterinvoice
            EnterInvoice{

            }
        }
        Component{
            id:viewinvoicee
            ViewInvoice{

            }
        }
        Component{
            id:enterpayment
            EnterPayment{

            }
        }

        Component{
            id:createinvoicee
            CreateInvoice{

            }
        }
        Component{
            id:viewPayment
            ViewPayment{

            }
        }
    }
    AboutApplictionpopup{
        id:aboutpopup
    }
}




