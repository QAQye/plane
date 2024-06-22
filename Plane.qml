import QtQuick 2.15

Rectangle {
    id: plane
    z: 3
    // 判断棋子是否到该回合是否可以移动
    signal ismoveed()
    property bool ismove
    property double longs
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
    width: planesize
    height: planesize
    radius: width / 2
    property double startplanex
    property double startplaney
    x: startplanex
    y: startplaney

    Image {
        id: mapplanes
        // 通过修改飞机的位置实现移动
        source: "qrc:/images/plane_green_b.png"

        HoverHandler {
            cursorShape: Qt.PointingHandCursor
        }
        anchors.fill: parent
        TapHandler {
            onTapped: {
                planesize = longs / 2
                ismoveed()
                // console.log(planesize)
            }
        }
    }

    Component.onCompleted: {
        console.log("*********************")
        console.log(x , startplanex)
        console.log(y , startplaney)
        console.log("*********************")

    }

}
