import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Item {
    width: 800
    height: 600
    scale: Math.min(parent.width / 800, parent.height / 600)

    Image {
        id: background
        source: "qrc:/images/2background.png" // 外部背景图片
        anchors.fill: parent

        Rectangle {
            width: parent.width
            height: parent.height
            color: "#2d2d2d" // 备用颜色，如果图片加载失败或尺寸不足时显示

            Rectangle {
                id: overlay
                width: 1000
                height: 600
                anchors.centerIn: parent
                radius: 10
                border.color: "#ffffff"
                border.width: 2
                scale: 1 / parent.scale

                // 设置overlay的背景图片与外部背景图片相同
                Image {
                    source: background.source // 使用外部背景图片的源
                    anchors.fill: parent
                    smooth: true // 可选项，平滑显示图片
                }

                Column {
                    anchors.centerIn: parent
                    spacing: 20

                    // 重复项列表
                    Repeater {
                        model: 4
                        delegate: Row {
                            spacing: 10
                            Text {
                                text: "请选择"
                                font.pixelSize: 14
                                color: "black"
                            }
                            Image {
                                id: imageItem
                                source: index === 0 ? "qrc:/images/red.png" :
                                        index === 1 ? "qrc:/images/blue.png" :
                                        index === 2 ? "qrc:/images/yellow.png" :
                                                      "qrc:/images/green.png"
                                width: 60
                                height: 60
                            }
                            ComboBox {
                                id: comboBox
                                width: 100
                                model: ["请选择", "玩家", "电脑", "无"]
                                font.pixelSize: 14
                                background: Rectangle {
                                    color: "white"
                                    radius: 5
                                }
                                indicator: Item {
                                    width: 20
                                    height: 20
                                    Rectangle {
                                        anchors.centerIn: parent
                                        width: 10
                                        height: 3
                                        color: "black"
                                    }
                                }
                                contentItem: Text {
                                    text: control.currentText
                                    color: "black"
                                    font.pixelSize: 14
                                }
                                onCurrentIndexChanged: {
                                    // 确保显示当前选择的文本
                                    comboBox.currentText = comboBox.model[comboBox.currentIndex];
                                }
                            }
                        }
                    }

                    Button {
                        text: "开始"
                        width: 100
                        height: 40
                        font.pixelSize: 16
                        anchors.horizontalCenter: parent.horizontalCenter
                        background: Rectangle {
                            color: "black"
                            radius: 5
                        }
                        onClicked: {
                            console.log("游戏开始")
                        }
                    }
                }
            }
        }
    }
}
