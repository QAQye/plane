import QtQuick
import QtQuick.Shapes
// 这个类用于绘制三角形
Item{
    z:2
    // 通过外层的对象来调整三角形的位置
    x:200
    y:200
    rotation:90
    // 设置旋转的中心点
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
            // 如果起点不是0,0那么旋转之后中间圆形的定位会出问题
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
            width: longs/2-10
            height: longs/2-10
            radius:height
            color: "white"
    }
}
