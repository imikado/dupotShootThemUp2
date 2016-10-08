import QtQuick 2.0

Repeater{
    model:modelEnemies

    Rectangle{
        id:item
        width:main.oGame.convert(100)
        height:main.oGame.convert(100)
        color:"transparent"

        x:model.x
        y:model.y

        AnimatedSprite {
            width:parent.width
            height:parent.height
            anchors.centerIn: parent
            source: "/images/BadSprite.png"
            frameCount: 3
            frameRate: 1/4
            frameSync: true
            frameWidth:  80
            frameHeight: 80
        }


        PropertyAnimation on y {
            to:main.oGame.getHeight()
            duration: 5000
            onStopped: die();
        }

        MouseArea{
            anchors.fill: parent
            onClicked:killedByPlayer()
        }

        function die(){
            main.oGame.lifeDown();
            modelEnemies.remove(model.index);
        }
        function killedByPlayer(){
            main.oGame.scoreUp(x,y);

            modelEnemies.remove(model.index);
        }
    }


}
