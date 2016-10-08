import QtQuick 2.0
import QtQuick.Controls 1.5

Rectangle {
    visible:true
    color: "#465973"
    width:main.oGame.getWidth()
    height:main.oGame.getHeight()

    Image{
        source:"/images/pageGameOver.png"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        width:main.oGame.convert(400)
        height:main.oGame.convert(650)

        Button {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            width: main.oGame.convert(291)
            height: main.oGame.convert(33)
            text: qsTr("Re-jouer!")

            onClicked:main.oGame.gotoScene()
        }

        Button {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            anchors.verticalCenterOffset: 50
            width: main.oGame.convert(291)
            height: main.oGame.convert(33)
            text: qsTr("Retour au menu")

            onClicked:main.oGame.gotoMenu()
        }
    }
}
