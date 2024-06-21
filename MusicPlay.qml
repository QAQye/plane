import QtQuick
import QtMultimedia
Item {
    property alias bgm: _bgm
    MediaPlayer {
        id:_bgm
           audioOutput:AudioOutput
           {
                           volume:0.5

           }
           autoPlay: true;
           source: "qrc:/images/bgm.mp3";
    }
    TapHandler{
        onTapped:{bgm.playbackState===MediaPlayer.playbackState?bgm.sause():bgm.play();}
    }
}
