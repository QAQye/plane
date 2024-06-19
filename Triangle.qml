import QtQuick
import QtQuick.Shapes
// 这个类用于绘制三角形
Item{
    property alias sx: triangle.startX
    property alias sy: triangle.startY
    property double centerX: triangle.startX+longs/7
    property double centerY: triangle.startY+longs/7
    property double longs: 50
    Shape{
        ShapePath {
            id:triangle
            startX: 200
            startY: 200
            // 三角形边的长度
            strokeColor: "red"
            fillColor: "red"
            // 自定义的路径
            PathLine { x: sx; y: sy }
            PathLine { x: sx; y: sy+longs }
            PathLine { x: sx+longs; y: sy }
        }

        // 在三角形的中心绘制圆形
    }
    Rectangle{
            x: parent.centerX
            y: parent.centerY
            width: longs/2.5
            height: longs/2.5
            radius:longs/2
            color: "blue"
    }
}
