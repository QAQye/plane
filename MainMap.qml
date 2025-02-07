//aly
import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Shapes
RowLayout{
    id:rowlayout
    property alias dicebutton:_dicebutton
    property double longs: rowlayout.width/15.5
    property double startx:_mainMapRectangle.width*0.31
    property double starty: _mainMapRectangle.height*0.86
    property var items:[]
    property alias textarea:_textarea
    property alias orangescreen: _orangescreen
    property alias bluescreen: _bluescreen
    property alias redscreen:_redscreen
    property alias greenscreen:_greenscreen
    property alias item1:mapitem1
    property alias item2:mapitem2
    property alias item3:mapitem3
    property alias item4:mapitem4
    property alias item5:mapitem5
    property alias item6:mapitem6
    property alias item7:mapitem7
    property alias item8:mapitem8
    property alias item9:mapitem9
    property alias item10:mapitem10
    property alias item11:mapitem11
    property alias item12:mapitem12
    property alias item13:mapitem13
    property alias item14:mapitem14
    property alias item15:mapitem15
    property alias item16:mapitem16
    property alias item17:mapitem17
    property alias item18:mapitem18
    property alias item19:mapitem19
    property alias item20:mapitem20
    property alias item21:mapitem21
    property alias item22:mapitem22
    property alias item23:mapitem23
    property alias item24:mapitem24
    property alias item25:mapitem25
    property alias item26:mapitem26
    property alias item27:mapitem27
    property alias item28:mapitem28
    property alias item29:mapitem29
    property alias item30:mapitem30
    property alias item31:mapitem31
    property alias item32:mapitem32
    property alias item33:mapitem33
    property alias item34:mapitem34
    property alias item35:mapitem35
    property alias item36:mapitem36
    property alias item37:mapitem37
    property alias item38:mapitem38
    property alias item39:mapitem39
    property alias item40:mapitem40
    property alias item41:mapitem41
    property alias item42:mapitem42
    property alias item43:mapitem43
    property alias item44:mapitem44
    property alias item45:mapitem45
    property alias item46:mapitem46
    property alias item47:mapitem47
    property alias item48:mapitem48
    property alias item49:mapitem49
    property alias item50:mapitem50
    property alias item51:mapitem51
    property alias item52:mapitem52
    property alias item53:mapitem53
    property alias item54:mapitem54
    property alias item55:mapitem55
    property alias item56:mapitem56
    property alias item57:mapitem57
    property alias item58:mapitem58
    property alias item59:mapitem59
    property alias item60:mapitem60
    property alias item61:mapitem61
    property alias item62:mapitem62
    property alias item63:mapitem63
    property alias item64:mapitem64
    property alias item65:mapitem65
    property alias item66:mapitem66
    property alias item67:mapitem67
    property alias item68:mapitem68
    property alias item69:mapitem69
    property alias item70:mapitem70
    property alias item71:mapitem71
    property alias item72:mapitem72
    property alias item73:mapitem73
    property alias item74:mapitem74
    property alias item75:mapitem75
    property alias item76:mapitem76
    property alias dice:_dice
    property alias delytimer:delytimer
    property alias an1: _an1
    property alias an2: _an2


    // 使用数组来存储地图上的颜色以便于切换主题
    property var mapitemcolor:["#83c326","#db224e","#e77918","#76c5f0"]
    // property var mappositioin:[]
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
                    id:gridelayout
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
                            // Image {
                            //     anchors.centerIn: parent // 居中对齐
                            //     anchors.fill: parent
                            //     source:"qrc:/images/plane_green_b.png"
                            //     HoverHandler{
                            //          cursorShape: Qt.PointingHandCursor
                            //     }
                            // }
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
                            // Image {
                            //     anchors.centerIn: parent // 居中对齐
                            //     anchors.fill: parent
                            //     source:"qrc:/images/plane_red_b.png"
                            //     HoverHandler{
                            //          cursorShape: Qt.PointingHandCursor
                            //     }
                            // }
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
                            // Image {
                            //     anchors.centerIn: parent // 居中对齐
                            //     anchors.fill: parent
                            //     source:"qrc:/images/plane_yellow_b.png"
                            //     HoverHandler{
                            //          cursorShape: Qt.PointingHandCursor
                            //     }
                            // }
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
                            // Image {
                            //     anchors.centerIn: parent // 居中对齐
                            //     anchors.fill: parent
                            //     source:"qrc:/images/plane_blue_b.png"
                            //     HoverHandler{
                            //          cursorShape: Qt.PointingHandCursor
                            //     }
                            // }
                        }
                    }
                }

        }
        Text {
            id: turnText
            text: "该你的回合了"
            font.pointSize: 50
            anchors.centerIn: parent
            color: "black"
            opacity: 0
            visible: false
            z:6
        }

        PropertyAnimation {
            id: _an1
            target: turnText
            property: "opacity"
            from: 0
            to: 1
            duration: 3000
            onStarted: {
                turnText.visible=true
            }
        }
        PropertyAnimation {
            id: _an2
            target: turnText
            property: "opacity"
            from: 1
            to: 0
            duration: 3000
            onFinished: {
  turnText.visible=false
            }
        }
        Triangle{
            id:mapitem1
            fcolor:mapitemcolor[3]
            longs:rowlayout.longs
            x:startx
            y:starty

        }
        MapRectangle{
            id:mapitem2
            x:startx+longs
            y:starty
            width: longs/2
            height: longs
            color:mapitemcolor[1]

        }
        MapRectangle{
            id:mapitem3
            x:startx+longs*3/2
            y:starty
            width: longs/2
            height: longs
            color:mapitemcolor[0]

        }

        MapRectangle{
            id:mapitem4
            x:startx+longs*2
            y:starty
            width: longs/2
            height: longs
            color:mapitemcolor[2]
        }
        MapRectangle{
            id:mapitem5
            x:startx+longs*5/2
            y:starty
            width: longs/2
            height: longs
            color:mapitemcolor[3]
        }
        MapRectangle{
            id:mapitem6
            x:startx+longs*3
            y:starty
            width: longs/2
            height: longs
            color: mapitemcolor[1]
        }
        Triangle{
            id:mapitem7
            longs:rowlayout.longs
            x:startx+longs*7/2
            y:starty
            rotation: 0
            fcolor:mapitemcolor[0]

        }
        MapRectangle{
            id:mapitem8
            x:startx+longs*7/2
            y:starty-longs/2
            width: longs
            height: longs/2
            color: mapitemcolor[2]
        }
        MapRectangle{
            id:mapitem9
            x:startx+longs*7/2
            y:starty-longs
            width: longs
            height: longs/2
            color: mapitemcolor[3]
        }
        Triangle{
            id:mapitem10
            longs:rowlayout.longs
            x:startx+longs*7/2
            y:starty-longs*2
            rotation: 270
            fcolor:mapitemcolor[1]

        }
        Triangle{
            id:mapitem11
            longs:rowlayout.longs
            x:startx+longs*7/2
            y:starty-longs*2
            rotation: 90
            fcolor:mapitemcolor[0]

        }
        MapRectangle{
            id:mapitem12
            x:startx+longs*9/2
            y:starty-longs*2
            width:  longs/2
            height: longs
            color: mapitemcolor[2]
        }
        MapRectangle{
            id:mapitem13
            x:startx+longs*5
            y:starty-longs*2
            width: longs/2
            height: longs
            color: mapitemcolor[3]
        }
        Triangle{
            id:mapitem14
            longs:rowlayout.longs
            x:startx+longs*11/2
            y:starty-longs*2
            rotation: 0
            fcolor:mapitemcolor[1]

        }
        MapRectangle{
            id:mapitem15

            x:startx+longs*11/2
            y:starty-longs*5/2
            width: longs
            height: longs/2
            color: mapitemcolor[0]
        }
        MapRectangle{
            id:mapitem16
            x:startx+longs*11/2
            y:starty-longs*3
            width: longs
            height: longs/2
            color: mapitemcolor[2]
        }
        MapRectangle{
            id:mapitem17
            x:startx+longs*11/2
            y:starty-longs*7/2
            width: longs
            height: longs/2
            color: mapitemcolor[3]
        }
        MapRectangle{
            id:mapitem18
            x:startx+longs*11/2
            y:starty-longs*4
            width: longs
            height: longs/2
            color: mapitemcolor[1]
        }
        MapRectangle{
            id:mapitem19
            x:startx+longs*11/2
            y:starty-longs*9/2
            width: longs
            height: longs/2
            color: mapitemcolor[0]
        }
        Triangle{
            id:mapitem20
            longs:rowlayout.longs
            x:startx+longs*11/2
            y:starty-longs*11/2
            rotation: 270
            fcolor:mapitemcolor[2]

        }
        MapRectangle{
            id:mapitem21
            x:startx+longs*5
            y:starty-longs*11/2
            width: longs/2
            height: longs
            color: mapitemcolor[3]
        }
        MapRectangle{
            id:mapitem22
            x:startx+longs*9/2
            y:starty-longs*11/2
            width: longs/2
            height: longs
            color: mapitemcolor[1]
        }
        Triangle{
            id:mapitem23
            longs:rowlayout.longs
            x:startx+longs*7/2
            y:starty-longs*11/2
            rotation: 180
            fcolor:mapitemcolor[0]
        }
        Triangle{
            id:mapitem24
            longs:rowlayout.longs
            x:startx+longs*7/2
            y:starty-longs*11/2
            rotation: 0
            fcolor:mapitemcolor[2]
        }
        MapRectangle{
            id:mapitem25
            x:startx+longs*7/2
            y:starty-longs*6
            width: longs
            height: longs/2
            color: mapitemcolor[3]
        }
        MapRectangle{
            id:mapitem26
            x:startx+longs*7/2
            y:starty-longs*13/2
            width: longs
            height: longs/2
            color: mapitemcolor[1]
        }
        Triangle{
            id:mapitem27
            longs:rowlayout.longs
            x:startx+longs*7/2
            y:starty-longs*15/2
            rotation: 270
            fcolor:mapitemcolor[0]
        }
        MapRectangle{
            id:mapitem28
            x:startx+longs*3
            y:starty-longs*15/2
            width: longs/2
            height: longs
            color: mapitemcolor[2]
        }
        MapRectangle{
            id:mapitem29
            x:startx+longs*5/2
            y:starty-longs*15/2
            width: longs/2
            height: longs
            color: mapitemcolor[3]
        }
        MapRectangle{
            id:mapitem30
            x:startx+longs*2
            y:starty-longs*15/2
            width: longs/2
            height: longs
            color: mapitemcolor[1]
        }
        MapRectangle{
            id:mapitem31
            x:startx+longs*3/2
            y:starty-longs*15/2
            width: longs/2
            height: longs
            color: mapitemcolor[0]
        }
        MapRectangle{
            id:mapitem32
            x:startx+longs
            y:starty-longs*15/2
            width: longs/2
            height: longs
            color: mapitemcolor[2]
        }
        Triangle{
            id:mapitem33
            longs:rowlayout.longs
            x:startx
            y:starty-longs*15/2
            rotation: 180
            fcolor:mapitemcolor[3]
        }
        MapRectangle{
            id:mapitem34
            x:startx
            y:starty-longs*13/2
            width: longs
            height: longs/2
            color: mapitemcolor[1]
        }
        MapRectangle{
            id:mapitem35
            x:startx
            y:starty-longs*6
            width: longs
            height: longs/2
            color: mapitemcolor[0]
        }
        Triangle{
            id:mapitem36
            longs:rowlayout.longs
            x:startx
            y:starty-longs*11/2
            rotation: 90
            fcolor:mapitemcolor[2]
        }
        Triangle{
            id:mapitem37
            longs:rowlayout.longs
            x:startx
            y:starty-longs*11/2
            rotation: 270
            fcolor:mapitemcolor[3]
        }
        MapRectangle{
            id:mapitem38
            x:startx-longs/2
            y:starty-longs*11/2
            width: longs/2
            height: longs
            color: mapitemcolor[1]
        }
        MapRectangle{
            id:mapitem39
            x:startx-longs
            y:starty-longs*11/2
            width: longs/2
            height: longs
            color: mapitemcolor[0]
        }
        Triangle{
            id:mapitem40
            longs:rowlayout.longs
            x:startx-longs*2
            y:starty-longs*11/2
            rotation: 180
            fcolor:mapitemcolor[2]
        }
        MapRectangle{
            id:mapitem41
            x:startx-longs*2
            y:starty-longs*9/2
            width: longs
            height: longs/2
            color: mapitemcolor[3]
        }
        MapRectangle{
            id:mapitem42
            x:startx-longs*2
            y:starty-longs*4
            width: longs
            height: longs/2
            color: mapitemcolor[1]
        }
        MapRectangle{
            id:mapitem43
            x:startx-longs*2
            y:starty-longs*7/2
            width: longs
            height: longs/2
            color: mapitemcolor[0]
        }
        MapRectangle{
            id:mapitem44
            x:startx-longs*2
            y:starty-longs*3
            width: longs
            height: longs/2
            color: mapitemcolor[2]
        }
        MapRectangle{
            id:mapitem45
            x:startx-longs*2
            y:starty-longs*5/2
            width: longs
            height: longs/2
            color: mapitemcolor[3]
        }
        Triangle{
            id:mapitem46
            longs:rowlayout.longs
            x:startx-longs*2
            y:starty-longs*2
            rotation: 90
            fcolor:mapitemcolor[1]
        }
        MapRectangle{
            id:mapitem47
            x:startx-longs
            y:starty-longs*2
            width: longs/2
            height: longs
            color: mapitemcolor[0]
        }
        MapRectangle{
            id:mapitem48
            x:startx-longs/2
            y:starty-longs*2
            width: longs/2
            height: longs
            color: mapitemcolor[2]
        }
        Triangle{
            id:mapitem49
            longs:rowlayout.longs
            x:startx
            y:starty-longs*2
            rotation:0
            fcolor:mapitemcolor[3]
        }
        Triangle{
            id:mapitem50
            longs:rowlayout.longs
            x:startx
            y:starty-longs*2
            rotation:180
            fcolor:mapitemcolor[1]
        }
        MapRectangle{
            id:mapitem51
            x:startx
            y:starty-longs
            width: longs
            height: longs/2
            color: mapitemcolor[0]
        }
        MapRectangle{
            id:mapitem52
            x:startx
            y:starty-longs/2
            width: longs
            height: longs/2
            color: mapitemcolor[2]
        }


        // 飞机指向终点
        // 橙色飞机
        MapRectangle{
            id:mapitem53
            x:startx+longs*2
            y:starty-longs/2
            width: longs/2
            height: longs/2
            color: mapitemcolor[2]
        }
        MapRectangle{
            id:mapitem54
            x:startx+longs*2
            y:starty-longs
            width: longs/2
            height: longs/2
            color: mapitemcolor[2]
        }
        MapRectangle{
            id:mapitem55
            x:startx+longs*2
            y:starty-longs*3/2
            width: longs/2
            height: longs/2
            color: mapitemcolor[2]
        }
        MapRectangle{
            id:mapitem56
            x:startx+longs*2
            y:starty-longs*2
            width: longs/2
            height: longs/2
            color: mapitemcolor[2]
        }
        MapRectangle{
            id:mapitem57
            x:startx+longs*2
            y:starty-longs*5/2
            width: longs/2
            height: longs/2
            color: mapitemcolor[2]
        }
        Triangle{
            id:mapitem58
            // 使其等腰直角三角形与矩形的中心对齐,因为旋转导致位置有些偏离
            x:startx+longs*2-longs/4
            y:starty-longs*3
            longs:rowlayout.longs
            rotation: 45
            fcolor:mapitemcolor[2]
        }
        // 蓝色飞机
        MapRectangle{
            id:mapitem59
            x:startx+longs*5
            y:starty-longs*7/2
            width: longs/2
            height: longs/2
            color: mapitemcolor[3]
        }
        MapRectangle{
            id:mapitem60
            x:startx+longs*9/2
            y:starty-longs*7/2
            width: longs/2
            height: longs/2
            color: mapitemcolor[3]
        }
        MapRectangle{
            id:mapitem61
            x:startx+longs*4
            y:starty-longs*7/2
            width: longs/2
            height: longs/2
            color: mapitemcolor[3]
        }
        MapRectangle{
            id:mapitem62
            x:startx+longs*7/2
            y:starty-longs*7/2
            width: longs/2
            height: longs/2
            color: mapitemcolor[3]
        }
        MapRectangle{
            id:mapitem63
            x:startx+longs*3
            y:starty-longs*7/2
            width: longs/2
            height: longs/2
            color: mapitemcolor[3]
        }
        Triangle{
            id:mapitem64
            // 使其等腰直角三角形与矩形的中心对齐,因为旋转导致位置有些偏离
            x:startx+longs*5/2
            y:starty-longs*7/2-longs/4
            longs:rowlayout.longs
            rotation: 315
            fcolor:mapitemcolor[3]
        }
        // 红色矩形
        MapRectangle{
            id:mapitem65
            x:startx+longs*2
            y:starty-longs*13/2
            width: longs/2
            height: longs/2
            color: mapitemcolor[1]
        }
        MapRectangle{
            id:mapitem66
            x:startx+longs*2
            y:starty-longs*6
            width: longs/2
            height: longs/2
            color: mapitemcolor[1]
        }
        MapRectangle{
            id:mapitem67
            x:startx+longs*2
            y:starty-longs*11/2
            width: longs/2
            height: longs/2
            color: mapitemcolor[1]
        }
        MapRectangle{
            id:mapitem68
            x:startx+longs*2
            y:starty-longs*5
            width: longs/2
            height: longs/2
            color: mapitemcolor[1]
        }
        MapRectangle{
            id:mapitem69
            x:startx+longs*2
            y:starty-longs*9/2
            width: longs/2
            height: longs/2
            color: mapitemcolor[1]
        }
        Triangle{
            id:mapitem70
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
            id:mapitem71
            x:startx-longs
            y:starty-longs*7/2
            width: longs/2
            height: longs/2
            color: mapitemcolor[0]
        }
        MapRectangle{
            id:mapitem72
            x:startx-longs/2
            y:starty-longs*7/2
            width: longs/2
            height: longs/2
            color: mapitemcolor[0]
        }
        MapRectangle{
            id:mapitem73
            x:startx
            y:starty-longs*7/2
            width: longs/2
            height: longs/2
            color: mapitemcolor[0]
        }
        MapRectangle{
            id:mapitem74
            x:startx+longs/2
            y:starty-longs*7/2
            width: longs/2
            height: longs/2
            color: mapitemcolor[0]
        }
        MapRectangle{
            id:mapitem75
            x:startx+longs
            y:starty-longs*7/2
            width: longs/2
            height: longs/2
            color: mapitemcolor[0]
        }
        Triangle{
            id:mapitem76
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
            x:startx-longs
            y:starty
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
            x:startx+longs*4
            y:starty-longs*15/2
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
// 骰子的图片

        Rectangle{
            id: _dice
            // property int randomNum:1
            z: 1
            anchors.left: parent.left
            anchors.leftMargin: parent.width / 18
            anchors.top: parent.top
            anchors.topMargin: parent.height /2.2
            property int lastrandom:1
            Image {
                id:_diceimg
                  source: "qrc:/images/" + _dice.lastrandom + ".png"
              }
            Timer{
                // property alias randomNum : randomNum
                  id:timers
                  interval: 1
                  running: false
                  repeat: true
                  onTriggered: {
                      const randomNum = Math.floor(Math.random() * 6) + 1;
                      _dice.lastrandom=randomNum
                      _diceimg.source="qrc:/images/" + randomNum + ".png"

                  }
            }
        }
        Timer{
            id:stoptimer
            interval: 1000//设置骰子的持续时间是2000ms
            running:false
            repeat: false
            onTriggered: {
                timers.stop()
                _dicebutton.lastrandom=_dice.lastrandom
                _dicebutton.randomchanged()

            }
        }
        Timer{
            id:delytimer
            interval: 2000//设置骰子的持续时间是2000ms
            onTriggered: {
                       // 延迟后的操作
                       dicebutton.clicked() // 触发 Button 的点击信号
                   }

        }
        Button{
            id:_dicebutton
            signal randomchanged()
            property int click:0
            width: longs
            height: longs
            enabled: true
            z:1
            anchors.top: parent.top
            anchors.right: parent.right
            anchors.rightMargin: parent.width / 15
            anchors.topMargin: parent.height /2- height / 2
            flat : true
            highlighted : true
            property int lastrandom:1
            background: Rectangle{
                Image {
                    anchors.fill: parent
                    id: _dizeimage
                    source: "qrc:/images/骰子.png"

                }
                width:parent.width
                height: width
                radius: width/2
            }
            HoverHandler {
                cursorShape: Qt.PointingHandCursor
            }
            onClicked: {
                if(!timers.running){
                    click++
                    timers.start()
                    stoptimer.start()
                    enabled=false

                }
                // if(click%2==0){
                //     timers.stop()
                //     clickdoule++
                //     lastrandom=_dice.lastrandom
                //     randomchanged()
                //     // console.log(lastrandom)
                // }
                // else{
                //  timers.start()
                // }

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
    ScrollView{

    id:view
    Layout.preferredHeight: parent.height
    Layout.preferredWidth: parent.width*0.2
    TextArea{
        color:"black"
        text: "骰子记录器：
"
        id:_textarea
        background: Rectangle {
            color: "white"
            anchors.fill: parent
        }

        // 使用自动换行
        wrapMode: Text.Wrap
        // 使文本对象只可读
        readOnly: true
        HoverHandler{
            // 访问的时候鼠标是平常的形状
             cursorShape: Qt.ArrowCursor
        }
    }
}
}

