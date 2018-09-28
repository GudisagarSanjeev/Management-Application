import QtQuick 2.0
import QtQuick.Controls 2.2

TextField{
    width: parent.width * 1.45
    height: parent.height *0.9
    maximumLength: 16
    font.pixelSize: Math.min(parent.height/3,parent.width/8)

}
