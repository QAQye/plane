//aly
import QtQuick

Item {
    property alias dialogs:_dialogs
    property alias firstwindow:_firstwindow
    property alias secondwindow:_secondwindow
    property alias gamewindow: _gamewindow
    property alias creatroom: _creatroom
    property alias greengameover: _greengameover
    property alias orangegameover: _orangegameover
    property alias bluegameover: _bluegameover
    property alias redgameover: _redgameover
    property alias joinroom: _joinroom
    anchors.fill: parent
    Dialogs{
        id:_dialogs
    }

   FirstWindow{
       id:_firstwindow
        // visible: false
   }
   SecondWindow{
       id:_secondwindow
       visible: false
   }
   CreatRoom{
       id:_creatroom
       visible: false
   }
   JoinRoom{
       id:_joinroom
       visible: false
   }
   GameMap{
       id:_gamewindow
       visible: false
   }
   GreenGameOver{
       id:_greengameover
       visible:false
   }
   OrangeGameOver{
       id:_orangegameover
       visible:false
   }
   BlueGameOver{
       id:_bluegameover
       visible:false
   }
   RedGameOver{
       id:_redgameover
       visible:false
   }
}

