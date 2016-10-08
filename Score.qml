import QtQuick 2.0
import QtGraphicalEffects 1.0

Item{
    anchors.right: parent.right
    Text{
        id:"txt"
        text:'000000'
        anchors.right: parent.right
        font.pixelSize: main.oGame.convert( 30)
        font.bold: true
        color:"white"
    }
    DropShadow {
        anchors.fill: txt
        horizontalOffset: 3
        verticalOffset: 3
        radius: 1.0
        samples: 8
        color: "#80000000"
        source: txt
    }
    function setText(sText_){
        sText_='0000000'+sText_;
        txt.text=sText_.substr(-6);
    }

}
