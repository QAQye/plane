//hyf
import QtQuick
import QtQuick.Controls

Item {
    id: _bluegameover
    width: 1600
    height: 900

    Image {

        anchors.fill: parent
        source: "qrc:/images/blueover.png"

    }

    Text {
        anchors.centerIn: parent
        text: "游戏结束，恭喜蓝色飞机获胜"
        font.pixelSize: 60
        color: "black"
    }
}
