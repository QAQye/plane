import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item {
    signal startgame()
    anchors.fill: parent

    Image {
        id: background
        source: "qrc:/images/2background.png" // 外部背景图片
        anchors.fill: parent
    }

    Rectangle {
        width: parent.width
        height: parent.height
        color: "#2d2d2d" // 备用颜色，如果图片加载失败或尺寸不足时显示

        Rectangle {
            id: overlay
            anchors.fill: parent
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
                spacing: parent.height*0.1

                // 重复项列表
                Repeater {
                    model: ["红色方", "蓝色方", "黄色方", "绿色方"]
                    delegate: Row {
                        spacing: 10
                        property string playerColor: modelData
                        Text {
                            text: modelData
                            font.pixelSize: 18 // 增加字体大小
                            font.bold: true // 设置粗体
                            color: "#2d2d2d" // 设置颜色
                        }
                        Image {
                            id: imageItem
                            source: index === 0 ? "qrc:/images/red.png" :
                                    index === 1 ? "qrc:/images/blue.png" :
                                    index === 2 ? "qrc:/images/yellow.png" :
                                                  "qrc:/images/green.png"
                            width: 55
                            height: 55
                        }
                        ComboBox {
                            id: comboBox
                            width: 100
                            model: ["请选择", "玩家", "电脑", "无"]
                            font.pixelSize: 14
                            currentIndex: 0
                            onActivated: {
                                console.log(playerColor + " 选择了: " + comboBox.currentText);
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
                        console.log("游戏开始");
                        // 这里可以添加进一步的逻辑，根据每个选项的选择进入不同的场景
                        startgame()
                    }

                }
            }
        }
    }
}
