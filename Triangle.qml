import QtQuick
import QtQuick.Shapes
// 这个类用于绘制三角形
Item{
    x:200
    y:200
    rotation:90
    transformOrigin:Item.Center
    width: longs
    height: longs
    property alias fcolor: triangle.fillColor

    property double centerX: triangle.startX+longs/15
    property double centerY: triangle.startY+longs/15
    property double longs: 50
    Shape{
        anchors.centerIn: parent
        ShapePath {
            id:triangle
            startX: 0
            startY: 0
            // 三角形边的长度
            strokeColor: fillColor
            fillColor: "red"
            // 自定义的路径
            PathLine { x: 0; y: 0 }
            PathLine { x: 0; y: longs }
            PathLine { x: longs; y: 0 }
        }

        // 在三角形的中心绘制圆形
    }
    Rectangle{
            x: parent.centerX
            y: parent.centerY
            width: longs/2-4
            height: longs/2-4
            radius:height
            color: "white"
    }
}
