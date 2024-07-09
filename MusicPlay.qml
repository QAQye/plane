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
           // loops: Audio.infinite
           source: "qrc:/images/bgm.mp3";
           onPlaybackStateChanged: {
                       // 如果播放结束，则重新播放
                       if (_bgm.playbackState === MediaPlayer.EndOfMedia) {
                           _bgm.play();
                       }
                   }
    }
    TapHandler{
        onTapped:{bgm.playbackState===MediaPlayer.playbackState?bgm.sause():bgm.play();}
    }
}
