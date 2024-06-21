import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Shapes
RowLayout{
    id:rowlayout
     property double longs: rowlayout.width/15.5
    anchors.fill: parent
    property double startx:_mainMapRectangle.width*0.31
    property double starty: _mainMapRectangle.height*0.86
    // 使用数组来存储地图上的颜色以便于切换主题
    property var mapitemcolor:["#83c326","#db224e","#e77918","#76c5f0"]
    Rectangle{
        id:_mainMapRectangle
        // 在layout中设置填满父对象以及其首选宽度
        Layout.fillHeight: true
        // 剩下的0.2决定放text
        Layout.preferredWidth: parent.width*0.8
        // source:"qrc:/images/background.jpg"
        color: "#fffdca"
        // color:"blue"
        Rectangle{
            id:_greenscreen
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: _mainMapRectangle.width * 0.07
            anchors.topMargin: _mainMapRectangle.height * 0.005
            width: _mainMapRectangle.width*0.18
            height: width
            color:"#83c326"
                GridLayout {
                    anchors.fill: parent
                    columns: 2
                    rows: 2
                    // 用于加载有多少个数据项
                    // 这个是一个重复器
                    Repeater {
                        // 可以设置其数据模型
                        model: 4
                        Rectangle {
                            Layout.preferredWidth: _greenscreen.width*0.4
                            Layout.preferredHeight: width
                            radius: width*0.5
                            color: "#c5de69"
                            // 修改这个可以放飞机
                            Image {
                                anchors.centerIn: parent // 居中对齐
                                anchors.fill: parent
                                source:"qrc:/images/plane_green_b.png"
                            }
                        }
                    }
                }

        }
        Rectangle{
            id:_redscreen
            width:  _mainMapRectangle.width*0.18
            height: width
            anchors.right: parent.right
            anchors.top:parent.top
            anchors.rightMargin: _mainMapRectangle.width*0.07
            anchors.topMargin: _mainMapRectangle.height * 0.005
            color:"#db224e"
                GridLayout {
                    anchors.fill: parent
                    columns: 2
                    rows: 2
                    // 用于加载有多少个数据项
                    // 这个是一个重复器
                    Repeater {
                        // 可以设置其数据模型
                        model: 4
                        Rectangle {
                            Layout.preferredWidth: _redscreen.width*0.4
                            Layout.preferredHeight: width
                            radius: width*0.5
                            color: "#f09abd"

                            // 修改这个可以放飞机
                            Image {
                                anchors.centerIn: parent // 居中对齐
                                anchors.fill: parent
                                source:"qrc:/images/plane_red_b.png"
                            }
                        }
                    }
                }

        }

        Rectangle{
            id:_orangescreen
            width: _mainMapRectangle.width*0.18
            height: width
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.leftMargin: _mainMapRectangle.width*0.07
            anchors.bottomMargin: _mainMapRectangle.height * 0.005
            color:"#e77918"
                GridLayout {
                    anchors.fill: parent
                    columns: 2
                    rows: 2
                    // 用于加载有多少个数据项
                    // 这个是一个重复器
                    Repeater {
                        // 可以设置其数据模型
                        model: 4
                        Rectangle {
                            Layout.preferredWidth: _orangescreen.width*0.4
                            Layout.preferredHeight: width
                            radius: width*0.5
                            color: "#fff500"

                            // 修改这个可以放飞机
                            Image {
                                anchors.centerIn: parent // 居中对齐
                                anchors.fill: parent
                                source:"qrc:/images/plane_yellow_b.png"
                            }
                        }
                    }
                }

        }
        Rectangle{
            id:_bluescreen
            width:  _mainMapRectangle.width*0.18
            height: width
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.rightMargin: _mainMapRectangle.width*0.07
            anchors.bottomMargin: _mainMapRectangle.height * 0.005
            color:"#76c5f0"
                GridLayout {
                    anchors.fill: parent
                    columns: 2
                    rows: 2
                    // 用于加载有多少个数据项
                    // 这个是一个重复器
                    Repeater {
                        // 可以设置其数据模型
                        model: 4
                        Rectangle {
                            // 在布局中要使用layout来调整布局对象
                            Layout.preferredWidth: _bluescreen.width*0.4
                            Layout.preferredHeight: width
                            radius: width*0.5
                            color: "#c5e5fa"

                            // 修改这个可以放飞机
                            Image {
                                anchors.centerIn: parent // 居中对齐
                                anchors.fill: parent
                                source:"qrc:/images/plane_blue_b.png"
                            }
                        }
                    }
                }

        }
        Triangle{
            fcolor:mapitemcolor[3]
            longs:rowlayout.longs
            x:startx
            y:starty

        }
        MapRectangle{
            x:startx+longs
            y:starty
            width: longs/2
            height: longs
            color:mapitemcolor[1]

        }
        MapRectangle{
            x:startx+longs*3/2
            y:starty
            width: longs/2
            height: longs
            color:mapitemcolor[0]

        }

        MapRectangle{
            x:startx+longs*2
            y:starty
            width: longs/2
            height: longs
            color:mapitemcolor[2]
        }
        MapRectangle{
            x:startx+longs*5/2
            y:starty
            width: longs/2
            height: longs
            color:mapitemcolor[3]
        }
        MapRectangle{
            x:startx+longs*3
            y:starty
            width: longs/2
            height: longs
            color: mapitemcolor[1]
        }
        Triangle{
            longs:rowlayout.longs
            x:startx+longs*7/2
            y:starty
            rotation: 0
            fcolor:mapitemcolor[0]

        }
        MapRectangle{
            x:startx+longs*7/2
            y:starty-longs/2
            width: longs
            height: longs/2
            color: mapitemcolor[2]
        }
        MapRectangle{
            x:startx+longs*7/2
            y:starty-longs
            width: longs
            height: longs/2
            color: mapitemcolor[3]
        }
        Triangle{
            longs:rowlayout.longs
            x:startx+longs*7/2
            y:starty-longs*2
            rotation: 270
            fcolor:mapitemcolor[1]

        }
        Triangle{
            longs:rowlayout.longs
            x:startx+longs*7/2
            y:starty-longs*2
            rotation: 90
            fcolor:mapitemcolor[0]

        }
        MapRectangle{
            x:startx+longs*9/2
            y:starty-longs*2
            width:  longs/2
            height: longs
            color: mapitemcolor[2]
        }
        MapRectangle{
            x:startx+longs*5
            y:starty-longs*2
            width: longs/2
            height: longs
            color: mapitemcolor[3]
        }
        Triangle{
            longs:rowlayout.longs
            x:startx+longs*11/2
            y:starty-longs*2
            rotation: 0
            fcolor:mapitemcolor[1]

        }
        MapRectangle{
            x:startx+longs*11/2
            y:starty-longs*5/2
            width: longs
            height: longs/2
            color: mapitemcolor[0]
        }
        MapRectangle{
            x:startx+longs*11/2
            y:starty-longs*3
            width: longs
            height: longs/2
            color: mapitemcolor[2]
        }
        MapRectangle{
            x:startx+longs*11/2
            y:starty-longs*7/2
            width: longs
            height: longs/2
            color: mapitemcolor[3]
        }
        MapRectangle{
            x:startx+longs*11/2
            y:starty-longs*4
            width: longs
            height: longs/2
            color: mapitemcolor[1]
        }
        MapRectangle{
            x:startx+longs*11/2
            y:starty-longs*9/2
            width: longs
            height: longs/2
            color: mapitemcolor[0]
        }
        Triangle{
            longs:rowlayout.longs
            x:startx+longs*11/2
            y:starty-longs*11/2
            rotation: 270
            fcolor:mapitemcolor[2]

        }
        MapRectangle{
            x:startx+longs*5
            y:starty-longs*11/2
            width: longs/2
            height: longs
            color: mapitemcolor[3]
        }
        MapRectangle{
            x:startx+longs*9/2
            y:starty-longs*11/2
            width: longs/2
            height: longs
            color: mapitemcolor[1]
        }
        Triangle{
            longs:rowlayout.longs
            x:startx+longs*7/2
            y:starty-longs*11/2
            rotation: 180
            fcolor:mapitemcolor[0]
        }
        Triangle{
            longs:rowlayout.longs
            x:startx+longs*7/2
            y:starty-longs*11/2
            rotation: 0
            fcolor:mapitemcolor[2]
        }
        MapRectangle{
            x:startx+longs*7/2
            y:starty-longs*6
            width: longs
            height: longs/2
            color: mapitemcolor[3]
        }
        MapRectangle{
            x:startx+longs*7/2
            y:starty-longs*13/2
            width: longs
            height: longs/2
            color: mapitemcolor[1]
        }
        Triangle{
            longs:rowlayout.longs
            x:startx+longs*7/2
            y:starty-longs*15/2
            rotation: 270
            fcolor:mapitemcolor[0]
        }
        MapRectangle{
            x:startx+longs*3
            y:starty-longs*15/2
            width: longs/2
            height: longs
            color: mapitemcolor[2]
        }
        MapRectangle{
            x:startx+longs*5/2
            y:starty-longs*15/2
            width: longs/2
            height: longs
            color: mapitemcolor[3]
        }
        MapRectangle{
            x:startx+longs*2
            y:starty-longs*15/2
            width: longs/2
            height: longs
            color: mapitemcolor[1]
        }
        MapRectangle{
            x:startx+longs*3/2
            y:starty-longs*15/2
            width: longs/2
            height: longs
            color: mapitemcolor[0]
        }
        MapRectangle{
            x:startx+longs
            y:starty-longs*15/2
            width: longs/2
            height: longs
            color: mapitemcolor[2]
        }
        Triangle{
            longs:rowlayout.longs
            x:startx
            y:starty-longs*15/2
            rotation: 180
            fcolor:mapitemcolor[3]
        }
        MapRectangle{
            x:startx
            y:starty-longs*13/2
            width: longs
            height: longs/2
            color: mapitemcolor[1]
        }
        MapRectangle{
            x:startx
            y:starty-longs*6
            width: longs
            height: longs/2
            color: mapitemcolor[0]
        }
        Triangle{
            longs:rowlayout.longs
            x:startx
            y:starty-longs*11/2
            rotation: 90
            fcolor:mapitemcolor[2]
        }
        Triangle{
            longs:rowlayout.longs
            x:startx
            y:starty-longs*11/2
            rotation: 270
            fcolor:mapitemcolor[3]
        }
        MapRectangle{
            x:startx-longs/2
            y:starty-longs*11/2
            width: longs/2
            height: longs
            color: mapitemcolor[1]
        }
        MapRectangle{
            x:startx-longs
            y:starty-longs*11/2
            width: longs/2
            height: longs
            color: mapitemcolor[0]
        }
        Triangle{
            longs:rowlayout.longs
            x:startx-longs*2
            y:starty-longs*11/2
            rotation: 180
            fcolor:mapitemcolor[2]
        }
        MapRectangle{
            x:startx-longs*2
            y:starty-longs*9/2
            width: longs
            height: longs/2
            color: mapitemcolor[3]
        }
        MapRectangle{
            x:startx-longs*2
            y:starty-longs*4
            width: longs
            height: longs/2
            color: mapitemcolor[1]
        }
        MapRectangle{
            x:startx-longs*2
            y:starty-longs*7/2
            width: longs
            height: longs/2
            color: mapitemcolor[0]
        }
        MapRectangle{
            x:startx-longs*2
            y:starty-longs*3
            width: longs
            height: longs/2
            color: mapitemcolor[2]
        }
        MapRectangle{
            x:startx-longs*2
            y:starty-longs*5/2
            width: longs
            height: longs/2
            color: mapitemcolor[3]
        }
        Triangle{
            longs:rowlayout.longs
            x:startx-longs*2
            y:starty-longs*2
            rotation: 90
            fcolor:mapitemcolor[1]
        }
        MapRectangle{
            x:startx-longs
            y:starty-longs*2
            width: longs/2
            height: longs
            color: mapitemcolor[0]
        }
        MapRectangle{
            x:startx-longs/2
            y:starty-longs*2
            width: longs/2
            height: longs
            color: mapitemcolor[2]
        }
        Triangle{
            longs:rowlayout.longs
            x:startx
            y:starty-longs*2
            rotation:0
            fcolor:mapitemcolor[3]
        }
        Triangle{
            longs:rowlayout.longs
            x:startx
            y:starty-longs*2
            rotation:180
            fcolor:mapitemcolor[1]
        }
        MapRectangle{
            x:startx
            y:starty-longs
            width: longs
            height: longs/2
            color: mapitemcolor[0]
        }
        MapRectangle{
            x:startx
            y:starty-longs/2
            width: longs
            height: longs/2
            color: mapitemcolor[2]
        }


        // 飞机指向终点
        // 橙色飞机
        MapRectangle{
            x:startx+longs*2
            y:starty-longs/2
            width: longs/2
            height: longs/2
            color: mapitemcolor[2]
        }
        MapRectangle{
            x:startx+longs*2
            y:starty-longs
            width: longs/2
            height: longs/2
            color: mapitemcolor[2]
        }
        MapRectangle{
            x:startx+longs*2
            y:starty-longs*3/2
            width: longs/2
            height: longs/2
            color: mapitemcolor[2]
        }
        MapRectangle{
            x:startx+longs*2
            y:starty-longs*2
            width: longs/2
            height: longs/2
            color: mapitemcolor[2]
        }
        MapRectangle{
            x:startx+longs*2
            y:starty-longs*5/2
            width: longs/2
            height: longs/2
            color: mapitemcolor[2]
        }
        Triangle{
            // 使其等腰直角三角形与矩形的中心对齐,因为旋转导致位置有些偏离
            x:startx+longs*2-longs/4
            y:starty-longs*3
            longs:rowlayout.longs
            rotation: 45
            fcolor:mapitemcolor[2]
        }
        // 蓝色飞机
        MapRectangle{
            x:startx+longs*5
            y:starty-longs*7/2
            width: longs/2
            height: longs/2
            color: mapitemcolor[3]
        }
        MapRectangle{
            x:startx+longs*9/2
            y:starty-longs*7/2
            width: longs/2
            height: longs/2
            color: mapitemcolor[3]
        }
        MapRectangle{
            x:startx+longs*4
            y:starty-longs*7/2
            width: longs/2
            height: longs/2
            color: mapitemcolor[3]
        }
        MapRectangle{
            x:startx+longs*7/2
            y:starty-longs*7/2
            width: longs/2
            height: longs/2
            color: mapitemcolor[3]
        }
        MapRectangle{
            x:startx+longs*3
            y:starty-longs*7/2
            width: longs/2
            height: longs/2
            color: mapitemcolor[3]
        }
        Triangle{
            // 使其等腰直角三角形与矩形的中心对齐,因为旋转导致位置有些偏离
            x:startx+longs*5/2
            y:starty-longs*7/2-longs/4
            longs:rowlayout.longs
            rotation: 315
            fcolor:mapitemcolor[3]
        }
        // 红色矩形
        MapRectangle{
            x:startx+longs*2
            y:starty-longs*13/2
            width: longs/2
            height: longs/2
            color: mapitemcolor[1]
        }
        MapRectangle{
            x:startx+longs*2
            y:starty-longs*6
            width: longs/2
            height: longs/2
            color: mapitemcolor[1]
        }
        MapRectangle{
            x:startx+longs*2
            y:starty-longs*11/2
            width: longs/2
            height: longs/2
            color: mapitemcolor[1]
        }
        MapRectangle{
            x:startx+longs*2
            y:starty-longs*5
            width: longs/2
            height: longs/2
            color: mapitemcolor[1]
        }
        MapRectangle{
            x:startx+longs*2
            y:starty-longs*9/2
            width: longs/2
            height: longs/2
            color: mapitemcolor[1]
        }
        Triangle{
            // 使其等腰直角三角形与矩形的中心对齐,因为旋转导致位置有些偏离
            x:startx+longs*2-longs/4
             y:starty-longs*9/2
            longs:rowlayout.longs
            rotation: 225
            fcolor:mapitemcolor[1]
        }

        // 绿色飞机
        // 绘制的时候都是向下绘制的
        MapRectangle{
            x:startx-longs
            y:starty-longs*7/2
            width: longs/2
            height: longs/2
            color: mapitemcolor[0]
        }
        MapRectangle{
            x:startx-longs/2
            y:starty-longs*7/2
            width: longs/2
            height: longs/2
            color: mapitemcolor[0]
        }
        MapRectangle{
            x:startx
            y:starty-longs*7/2
            width: longs/2
            height: longs/2
            color: mapitemcolor[0]
        }
        MapRectangle{
            x:startx+longs/2
            y:starty-longs*7/2
            width: longs/2
            height: longs/2
            color: mapitemcolor[0]
        }
        MapRectangle{
            x:startx+longs
            y:starty-longs*7/2
            width: longs/2
            height: longs/2
            color: mapitemcolor[0]
        }
        Triangle{
            // 使其等腰直角三角形与矩形的中心对齐,因为旋转导致位置有些偏离
            x:startx+longs
            y:starty-longs*7/2-longs/4
            longs:rowlayout.longs
            rotation: 135
            fcolor:mapitemcolor[0]
        }

        // 绘制地图中间的线段
        // 蓝色线段
        Item{
            x:startx+longs/3
            y:starty-longs*9/2
            width:longs/4
            height: longs/4
            Shape{
                // anchors.left: parent
                ShapePath {
                    strokeWidth: longs*0.03
                    startX: 0
                    startY: 0
                    strokeColor: mapitemcolor[3]
                    // 自定义的路径
                    PathLine { x: 0; y:longs*5/2}
                    // 设置样式是虚线
                    strokeStyle: ShapePath.DashLine
                    dashPattern:[1,4]
                }
            }
        }
        Item{
            x:startx+longs/5
            y:starty-longs*9/2
            width:longs/4
            height: longs/4
            Shape{
                ShapePath {
                    strokeWidth: longs*0.03
                    startX: 0
                    startY: 0
                    strokeColor: mapitemcolor[3]
                    // 自定义的路径
                    PathLine { x: 0; y:longs*5/2}
                    // 设置样式是虚线
                    strokeStyle: ShapePath.DashLine
                    dashPattern:[1,4]
                }
            }
        }

        // 橙色线段
        Item{
            x:startx+longs
            y:starty-longs*9/2-longs*2/3
            width:longs/4
            height: longs/4
            Shape{
                ShapePath {
                    strokeWidth: longs*0.03
                    startX: 0
                    startY: 0
                    strokeColor: mapitemcolor[2]
                    // 自定义的路径
                    PathLine { x: longs*5/2; y:0}
                    // 设置样式是虚线
                    strokeStyle: ShapePath.DashLine
                    dashPattern:[1,4]
                }
            }
        }

        Item{
            x:startx+longs
            y:starty-longs*9/2-longs*4/5
            width:longs/4
            height: longs/4
            Shape{
                ShapePath {
                    strokeWidth: longs*0.03
                    startX: 0
                    startY: 0
                    strokeColor: mapitemcolor[2]
                    // 自定义的路径
                    PathLine { x: longs*5/2; y:0}
                    // 设置样式是虚线
                    strokeStyle: ShapePath.DashLine
                    dashPattern:[1,4]
                }
            }
        }

        // 绿色虚线
        Item{
            x:startx+longs*7/2+longs*2/3
            y:starty-longs*9/2
            width:longs/4
            height: longs/4
            Shape{
                ShapePath {
                    strokeWidth: longs*0.03
                    startX: 0
                    startY: 0
                    strokeColor: mapitemcolor[0]
                    // 自定义的路径
                    PathLine { x:0 ; y:longs*5/2}
                    // 设置样式是虚线
                    strokeStyle: ShapePath.DashLine
                    dashPattern:[1,4]
                }
            }
        }
        Item{
            x:startx+longs*7/2+longs*4/5
            y:starty-longs*9/2
            width:longs/4
            height: longs/4
            Shape{
                ShapePath {
                    strokeWidth: longs*0.03
                    startX: 0
                    startY: 0
                    strokeColor: mapitemcolor[0]
                    // 自定义的路径
                    PathLine { x:0 ; y:longs*5/2}
                    // 设置样式是虚线
                    strokeStyle: ShapePath.DashLine
                    dashPattern:[1,4]
                }
            }
        }

        // 红色虚线
        Item{
            x:startx+longs
            y:starty-longs*2+longs*4/5
            width:longs/4
            height: longs/4
            Shape{
                ShapePath {
                    strokeWidth: longs*0.03
                    startX: 0
                    startY: 0
                    strokeColor: mapitemcolor[1]
                    // 自定义的路径
                    PathLine { x:longs*5/2 ; y:0}
                    // 设置样式是虚线
                    strokeStyle: ShapePath.DashLine
                    dashPattern:[1,4]
                }
            }
        }
        Item{
            x:startx+longs
            y:starty-longs*2+longs*2/3
            width:longs/4
            height: longs/4
            Shape{
                ShapePath {
                    strokeWidth: longs*0.03
                    startX: 0
                    startY: 0
                    strokeColor: mapitemcolor[1]
                    // 自定义的路径
                    PathLine { x:longs*5/2 ; y:0}
                    // 设置样式是虚线
                    strokeStyle: ShapePath.DashLine
                    dashPattern:[1,4]
                }
            }
        }

        // 地图飞机起飞区域
        Rectangle{
            width: longs+longs/4
            height: longs
            x:startx+longs*11/2
            y:starty-longs*2
            color:"transparent"
            Text{
                anchors.bottom: parent.bottom
                anchors.right: parent.right
                text: "ready"
                font.family :"Helvetica"
                font.pointSize: longs*0.25
                font.italic:true
                color: mapitemcolor[3]

            }

        }

        Rectangle{
            z:3
            width: longs+longs/4
            height: longs
            x:startx-longs*3
            y:starty-longs*2
            color:"transparent"
            Text{
                anchors.bottom: parent.bottom
                anchors.right: parent.right
                text: "ready"
                font.family :"Helvetica"
                font.pointSize: longs*0.25
                font.italic:true
                color: mapitemcolor[2]

            }

        }
        Rectangle{
            width: longs+longs/4
            height: longs
            x:startx-longs*5/2
            y:starty-longs*11/2
            color:"transparent"
            Text{
                anchors.top: parent.top
                anchors.left: parent.left
                text: "ready"
                font.family :"Helvetica"
                font.pointSize: longs*0.25
                font.italic:true
                color: mapitemcolor[0]

            }

        }
        Rectangle{
            width: longs+longs/4
            height: longs
            x:startx+longs*11/2
            y:starty-longs*11/2
            color:"transparent"
            Text{
                anchors.top: parent.top
                anchors.right: parent.right
                text: "ready"
                font.family :"Helvetica"
                font.pointSize: longs*0.25
                font.italic:true
                color: mapitemcolor[1]

            }

        }

    }

    TapHandler{
        id:tapHandler
        onTapped: (eventPoint)=> {
                      // x:28.4 654.5
                      // 102  139.3
                 console.log( eventPoint.scenePosition.y)
                console.log(_mainMapRectangle.height)
                  }
    }
    TextArea{}


}

