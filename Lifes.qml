import QtQuick 2.0

Repeater{
    model:4

    delegate: Rectangle {
        visible:true
        width: main.oGame.convert(40)
        height: main.oGame.convert(40)
        color:"transparent"

        Image{
            source:"/images/Life.png";
            width:parent.width
            height:parent.height
        }

        x:main.oGame.convert(40+5)*model.index
        y:0
    }
    function setLifes(nb_){
        model=nb_;
    }
}
