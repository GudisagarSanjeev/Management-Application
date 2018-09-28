import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Controls 2.3
import  QtQuick.Dialogs 1.1

Item {
    visible: true
    height: Screen.desktopAvailableHeight
    width: Screen.desktopAvailableWidth

    signal changeTitle(string title)
    signal logoutClicked

    onChangeTitle: {
        header.title = title
    }
    Rectangle{
        id:r33
        anchors.fill: parent
        Column {
            //heade
            anchors.fill: parent

            OfficeManagerHeader{
                id: header
            }

            Row{
                width: parent.width
                height: parent.height * 1.1
                OfficeManagerRectangle{
                    width: parent.width * 1/8
                }
                //}
                Loader {
                    //content


                    Image {
                        id: landingimage
                        source: "qrc:/Images/Wallpaper2.png"
                        width: parent.width
                        height: parent.height *0.8
                    }
                    id:h
                    height: parent.height*4/3.7
                    width: parent.width * 0.88
                }
            }
        }

        Component{
            id:createempp
            OfficeManagerEmployeeDetails{

            }
        }
        Component{
            id:viewemp
            OfficeManagerViewemployee{

            }
        }
        Component{
            id:leaveemp
            OfficeManagerLeave{

            }
        }
        Component{
            id:deleteemp
            OfficeManagerDeleteEmployee{

            }
        }
    }
    AboutApplictionpopup{
        id:popup
    }
}
