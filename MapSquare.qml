import QtQuick

Rectangle {
    width: 50
    height: 50
    color:"red"
    Rectangle{
        z:2
        // 取width和height的最小值
        width: Math.min(parent.width,parent.height)-4
        height: width
        // 设置其为白色
        color: "white"
        radius: 0.5*width
        anchors.centerIn: parent
    }

}
