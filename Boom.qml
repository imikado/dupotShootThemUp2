import QtQuick 2.0

Repeater{
    model:modelBoom

    Rectangle {
        width:main.oGame.convert(80)
        height:main.oGame.convert(80)
        color: "transparent"

        x:model.x
        y:model.y

        AnimatedSprite {
            width:parent.width
            height:parent.height
            anchors.centerIn: parent
            source: "/images/BoomSprite.png"
            frameCount: 3
            frameRate: 1/2
            frameSync: true
            frameWidth:  80
            frameHeight: 80
            loops: 3
            onRunningChanged:{
                if (!running) {
                   die();
                }
            }
        }

        function die(){
            console.debug('boom die');
            modelBoom.remove(index);
        }

    }
}
