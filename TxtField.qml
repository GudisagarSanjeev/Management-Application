import QtQuick 2.0
import QtQuick.Controls 2.2

TextField{
    width: parent.width*0.7
    height: parent.height/3
    maximumLength: 16
    font.pixelSize: Math.min(parent.height/6,parent.width/8)
}
