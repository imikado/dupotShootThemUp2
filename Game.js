//dimensions réelles de l'écran
var _width;
var _height;

//dimensions de base de notre jeu
var _virtualWidth=720;
var _virtualHeight=960;

//ratio permettant d’adapter à la résolution de l'écran
var _iRatio;

var _xEnemy=0;
var _iLife=4;
var _iScore=0;

var _oPageScene;

function getWidth(){
    return _width;
}
function getHeight(){
    return _height;
}

//fonction de démarrage du jeu
function start(width_,height_){

    if(width_> height_){
        _width=height_*(_virtualWidth/_virtualHeight);
    }else{
        _width=width_;
    }

    _height=_width*(_virtualHeight/_virtualWidth);
    _iRatio=_width/_virtualWidth;

    main.width=_width;
    main.height=_height;

    //appel à la page splashscreen
    gotoSplashscreen();
}

//converti une dimension a la taille de l'écran
function convert(size_){
    return size_*_iRatio;
}

//fonctions de navigations
function gotoSplashscreen(){
    main.launchPage('Splashscreen');
}
function gotoMenu(){
    main.launchPage('Menu');
}
function gotoScene(){
    _oPageScene=main.launchPage('Scene');
}
function gotoGameover(){
    main.launchPage('GameOver');
}

var iCloudY=0;

//jeu
function addEnemy(){

    modelEnemies.append({x:_xEnemy,y:0});
    _xEnemy+=convert(120);

    if(_xEnemy > _width){
        _xEnemy=0;
    }

    modelCloud.append({x:0,y:iCloudY});
    iCloudY+=convert(200);
    if(iCloudY > _height){
        iCloudY=0;
    }
}
function lifeDown(){
    _iLife--;
    _oPageScene.setLifes(_iLife);

    if(_iLife < 0){
        _oPageScene.stopTimer();
        modelEnemies.clear();
        _xEnemy=0;
        _iLife=4;
        _iScore=0;
        _oPageScene.setLifes(_iLife);
        gotoGameover();
    }

    console.debug('lifeDown'+_iLife);
}
function scoreUp(x_,y_){
    modelBoom.append({x:x_,y:y_});
    _iScore++;
    _oPageScene.setScore(_iScore);

    console.debug('scoreUp'+_iScore);
}

