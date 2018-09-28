import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Controls 2.3
import QtQuick.Dialogs 1.3
Rectangle {
    id:createinvoice
    MessageDialog {
        id: messageDialog
        title : "Alert Box"
        visible: false;
    }

    anchors.fill: parent
    color: "#D9FAFF"

}

