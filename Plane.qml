//aly
import QtQuick
import QtMultimedia
import QtQuick.Controls
Control{
    topInset: -2
    leftInset: -2
    rightInset: -6
    bottomInset: -6
    id: plane
    z: 3
    // 判断棋子是否到该回合是否可以移动
    property var planepath:[]
    // 飞机是否到终点
    property bool isfly: false
    // 飞机的移动
    signal ismoveed()
    property bool ismove:true
    // 飞机的大小
    property double longs
    // 飞机是否达到终点
    property bool isend:false
    property alias planesource: mapplanes.source
    // 判断当前的位置
    property int currentposition:0
    property int nextposition
    // 判断是哪一种类型的棋子
    property int type
    // 判断这个棋子是否已经到达了终点,如果到达了终点那么就消失
    property bool isExist: true
    // 定义这个棋子的大小
    property double planesize
    property double startplanex
    property double startplaney
    x: startplanex
    y: startplaney
    background:   Rectangle {
        width: planesize
        height: planesize
        radius: width / 2
        Image {
            id: mapplanes
            // 通过修改飞机的位置实现移动
            source: "qrc:/images/plane_green_b.png"

            HoverHandler {
                cursorShape: Qt.PointingHandCursor
            }
            // 点击飞机的时候播放音乐
            MediaPlayer{
                id: _fly
                audioOutput:AudioOutput
                {
                    volume:1.0
                }
                source: "qrc:/images/fly.wav"

            }
            anchors.fill: parent
            TapHandler {
                onTapped: {
                    _fly.play()
                    ismoveed()

                }
            }
        }
    }


}
