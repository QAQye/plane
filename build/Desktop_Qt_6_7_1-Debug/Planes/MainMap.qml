import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
RowLayout{
    id:rowlayout
    anchors.fill: parent
    Rectangle{
        id:_mainMapRectangle
        // 在layout中设置填满父对象以及其首选宽度
        Layout.fillHeight: true
        Layout.preferredWidth: parent.width*0.8
        color: "#fffdca"
        Rectangle{
            id:_greenscreen
            width: (_mainMapRectangle.width/13)*3
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
                            Text {
                                anchors.centerIn: parent // 居中对齐
                                text: index + 1
                            }
                        }
                    }
                }

        }
        Rectangle{
            id:_redscreen
            width:  (_mainMapRectangle.width/13)*3
            height: width
            anchors.right: parent.right
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
                            Text {
                                anchors.centerIn: parent // 居中对齐
                                text: index + 1
                            }
                        }
                    }
                }

        }

        Rectangle{
            id:_orangescreen
            width:  (_mainMapRectangle.width/13)*3
            height: width
            anchors.bottom: parent.bottom
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
                            Text {
                                anchors.centerIn: parent // 居中对齐
                                text: index + 1
                            }
                        }
                    }
                }

        }
        Rectangle{
            id:_bluescreen
            width:  (_mainMapRectangle.width/13)*3
            height: width
            anchors.right: parent.right
            anchors.bottom: parent.bottom
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
                            Text {
                                anchors.centerIn: parent // 居中对齐
                                text: index + 1
                            }
                        }
                    }
                }

        }
    }


    // TapHandler{
    //     onTapped:{
    //         console.log(contents.width)
    //     }
    // }

        // 使用组布局设置每行每列显示的个数


}

