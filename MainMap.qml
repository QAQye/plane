import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
RowLayout{
    id:rowlayout
     property double longs: rowlayout.width/13
    anchors.fill: parent
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
            fcolor:"#76c5f0"
            longs:rowlayout.longs
            x:_mainMapRectangle.width*0.265
            y:_mainMapRectangle.height*0.86

        }
        MapRectangle{
            x:_mainMapRectangle.width*0.265+longs
            y:_mainMapRectangle.height*0.86
            width: longs/2
            height: longs
            color:"#db224e"

        }
        MapRectangle{
            x:_mainMapRectangle.width*0.265+longs*3/2
            y:_mainMapRectangle.height*0.86
            width: longs/2
            height: longs
            color:"#83c326"

        }

        MapRectangle{
            x:_mainMapRectangle.width*0.265+longs*2
            y:_mainMapRectangle.height*0.86
            width: longs/2
            height: longs
            color:"#e77918"
        }
        MapRectangle{
            x:_mainMapRectangle.width*0.265+longs*5/2
            y:_mainMapRectangle.height*0.86
            width: longs/2
            height: longs
            color:"#76c5f0"
        }
        MapRectangle{
            x:_mainMapRectangle.width*0.265+longs*3
            y:_mainMapRectangle.height*0.86
            width: longs/2
            height: longs
            color: "#db224e"
        }
        Triangle{
            longs:rowlayout.longs
            x:_mainMapRectangle.width*0.265+longs*7/2
            y:_mainMapRectangle.height*0.86
            rotation: 0
            fcolor:"#83c326"

        }
        MapRectangle{
            x:_mainMapRectangle.width*0.265+longs*7/2
            y:_mainMapRectangle.height*0.86-longs/2
            width: longs
            height: longs/2
            color: "#e77918"
        }
        MapRectangle{
            x:_mainMapRectangle.width*0.265+longs*7/2
            y:_mainMapRectangle.height*0.86-longs
            width: longs
            height: longs/2
            color: "#76c5f0"
        }
        Triangle{
            longs:rowlayout.longs
            x:_mainMapRectangle.width*0.265+longs*7/2
            y:_mainMapRectangle.height*0.86-longs*2
            rotation: 270
            fcolor:"#db224e"

        }
        Triangle{
            longs:rowlayout.longs
            x:_mainMapRectangle.width*0.265+longs*7/2
            y:_mainMapRectangle.height*0.86-longs*2
            rotation: 90
            fcolor:"#83c326"

        }
        MapRectangle{
            x:_mainMapRectangle.width*0.265+longs*9/2
            y:_mainMapRectangle.height*0.86-longs*2
            width:  longs/2
            height: longs
            color: "#e77918"
        }
        MapRectangle{
            x:_mainMapRectangle.width*0.265+longs*5
            y:_mainMapRectangle.height*0.86-longs*2
            width: longs/2
            height: longs
            color: "#76c5f0"
        }
        Triangle{
            longs:rowlayout.longs
            x:_mainMapRectangle.width*0.265+longs*11/2
            y:_mainMapRectangle.height*0.86-longs*2
            rotation: 0
            fcolor:"#db224e"

        }
        MapRectangle{
            x:_mainMapRectangle.width*0.265+longs*11/2
            y:_mainMapRectangle.height*0.86-longs*5/2
            width: longs
            height: longs/2
            color: "#76c5f0"
        }
        MapRectangle{
            x:_mainMapRectangle.width*0.265+longs*11/2
            y:_mainMapRectangle.height*0.86-longs*3
            width: longs
            height: longs/2
            color: "#76c5f0"
        }
        MapRectangle{
            x:_mainMapRectangle.width*0.265+longs*11/2
            y:_mainMapRectangle.height*0.86-longs*7/2
            width: longs
            height: longs/2
            color: "#76c5f0"
        }
        MapRectangle{
            x:_mainMapRectangle.width*0.265+longs*11/2
            y:_mainMapRectangle.height*0.86-longs*4
            width: longs
            height: longs/2
            color: "#76c5f0"
        }
        MapRectangle{
            x:_mainMapRectangle.width*0.265+longs*11/2
            y:_mainMapRectangle.height*0.86-longs*9/2
            width: longs
            height: longs/2
            color: "#76c5f0"
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




}

