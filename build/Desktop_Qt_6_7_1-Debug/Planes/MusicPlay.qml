import QtQuick
import QtMultimedia
Item {
    MediaPlayer {
        id:bgm
           audioOutput:AudioOutput
           {
                           volume:0.5

           }
           autoPlay: true;
           source: "qrc:/images/bgm.mp3";
    }
    TapHandler{
        onTapped: ()=>{bgm.playbackState===MediaPlayer.playbackState?_bgm.sause():_bgm.play();}
    }
}
