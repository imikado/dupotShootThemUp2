import QtQuick 2.0

Repeater{
    model:modelCloud
    Rectangle {
        visible:true
        color: "transparent"
        width:main.oGame.convert(225)
        height:main.oGame.convert(134)
        z:0
        y:model.y

        Image{
            source:"/images/Cloud.png"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            width:parent.width
            height:parent.height
        }

        PropertyAnimation on x {
            to:main.oGame.getWidth()
            duration: 2000
            onStopped: die();
        }

        function die(){
            modelCloud.remove(model.index);
        }
    }
}
