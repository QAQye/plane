import QtQuick

Item {
    property alias dialogs:_dialogs
    property alias firstwindow:_firstwindow
    property alias secondwindow:_secondwindow
    property alias gamewindow: _gamewindow
    anchors.fill: parent
    Dialogs{
        id:_dialogs
    }

   FirstWindow{
       id:_firstwindow
   }
   SecondWindow{
       id:_secondwindow
       visible: false
   }
   MainMap{
       id:_gamewindow
       visible: false
   }
}

