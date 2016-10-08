import QtQuick 2.0
import QtQuick.Controls 1.5

import "qrc:/items/"

Rectangle{
    visible:true
    color:'#1868b2'
    width:main.oGame.getWidth()
    height:main.oGame.getHeight()

    Score{
        id:"oScore"
    }
    Lifes{
        id:"oLife"
    }

    Enemy{}
    Boom{}
    Cloud{}

    Timer {
        id:timerEnemy
        interval: 1000;
        running: true
        repeat: true
        onTriggered: main.oGame.addEnemy();
    }

    function setScore(sText_){
        oScore.setText(sText_);
    }
    function setLifes(iNb_){
        oLife.setLifes(iNb_);
    }
    function stopTimer(){
        timerEnemy.stop();
    }
}

