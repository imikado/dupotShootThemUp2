import QtQuick 2.0
import QtQuick.Controls 1.5

import "qrc:/items"

Rectangle {
    visible:true
    color: "#1868b2"
    width:main.oGame.getWidth()
    height:main.oGame.getHeight()

    Image{
        source:"/images/pageStartGame.png"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        width:main.oGame.convert(400)
        height:main.oGame.convert(650)

        Button {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            width: main.oGame.convert(291)
            height: main.oGame.convert(33)
            text: qsTr("Jouer!")
            onClicked:main.oGame.gotoScene()
        }
        Bouton{
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            _width: main.oGame.convert(291)
            _height: main.oGame.convert(33)
            _text: qsTr("Jouer!")
            _link:main.oGame.gotoScene
        }
    }
}
