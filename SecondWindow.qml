import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Image {
    signal isclicked()
    signal startgame()
    signal creatroomscene()
    signal joinroomscene()
property string selectedButtonId: "" // 定义selectedButtonId属性

                id: _background
                source: "qrc:/images/se5.png" // 外部背景图片
                anchors.fill: parent
                // 定义颜色按钮的信号
                signal colorButtonClicked()

                // 创建一个点击信号处理器
                function handleColorButtonClicked() {
                    colorButtonClicked();
                }

                // 创建一个 TapHandler 组件，用于处理点击事件
                TapHandler {
                    // anchors.fill: parent // 使 TapHandler 覆盖整个 Rectangle
                    onTapped: handleColorButtonClicked() // 处理轻触事件
                }
                Rectangle {
                    id:_deciveRectangle
                    width: _background.width*0.32
                    height: _background.height * 0.1//rectangle大小
                    color: "transparent"
                    // color: "red"
                    x: _background.width * 0.432 // 按钮 x 坐标为图像宽度的%
                    y: _background.height * 0.205 // 按钮 y 坐标为图像高度的%
                    Text{
                    text:"音乐:"
                    font.pixelSize: _background.width * 0.03
                    font.bold: true // 设置
                    }
                    ComboBox {

                        id: comboBox
                         width: _background.width*0.21
                         height: _background.height*0.04
                         y: _deciveRectangle.height * 0.3
                         x: _deciveRectangle.width * 0.33
                        model: ["是", "否"] // 下拉列表框的选项
                        currentIndex: 0 // 初始选中的索引

                        // 在值改变时触发的信号处理函数
                        onActivated: {
                            console.log("选中的值为: " + comboBox.currentText)
                        }

                    }
                }
                Rectangle {

                    id:_deciveRectangle2
                    width: _background.width*0.32
                    height: _background.height * 0.1//rectangle大小
                    color: "transparent"
                    // color: "red"
                    x: _background.width * 0.433 // 按钮 x 坐标为图像宽度的%
                    y: _background.height * 0.39// 按钮 y 坐标为图像高度的%
                    Text{
                    text:"胜制:"
                    font.pixelSize: _background.width * 0.03
                    font.bold: true // 设置
                    }
                    ComboBox {

                        id: comboBox2
                         height: _background.height*0.04
                         width: _background.width*0.21
                         y: _deciveRectangle.height * 0.3
                         x: _deciveRectangle.width * 0.33
                        model: ["2进胜利", "3进胜利","4进胜利"] // 下拉列表框的选项
                        currentIndex: 0 // 初始选中的索引

                        // 在值改变时触发的信号处理函数
                        onActivated: {
                            console.log("选中的值为: " + comboBox2.currentText)
                        }

                    }
                }

                Rectangle {

                    id:_deciveRectangle3
                    width: _background.width*0.32
                    height: _background.height * 0.1//rectangle大小
                    color: "transparent"
                    // color: "red"
                    x: _background.width * 0.434 // 按钮 x 坐标为图像宽度的%
                    y: _background.height * 0.59// 按钮 y 坐标为图像高度的%
                    Text{
                    text:"人数:"
                    font.pixelSize: _background.width * 0.03
                    font.bold: true // 设置
                    }
                    ComboBox {

                        id: comboBox3
                         height: _background.height*0.04
                         width: _background.width*0.21
                         y: _deciveRectangle.height * 0.3
                         x: _deciveRectangle.width * 0.33
                        model: ["2人", "4人"] // 下拉列表框的选项
                        currentIndex: 0 // 初始选中的索引

                        // 在值改变时触发的信号处理函数
                        onActivated: {
                            console.log("选中的值为: " + comboBox3.currentText)
                        }

                    }
                }


                Button {

                    // text: "开始"
                    font.pixelSize: Math.min(width, height) * 0.5 // 根据按钮的宽度和高度设置字体大小
                    width: _background.width*0.13
                    height: _background.height * 0.16//按钮大小
                    x: _background.width * 0.09 // 按钮 x 坐标为图像宽度的%
                    y: _background.height * 0.67 // 按钮 y 坐标为图像高度的%
                    background: Rectangle {
                        color: "transparent"

                    }

                    onClicked: {
                        popup.open()
                        console.log("对象");
                        // 这里可以添加进一步的逻辑，根据每个选项的选择进入不同的场景

                    }
                }

                Popup {
                                       id: popup
                                       visible: false
                                       width: _background.width*0.4
                                       height: _background.height * 0.8//弹窗大小
                                       modal: true

                                       // 设置弹窗的位置
                                       x: _background.width * 0.4 // 按钮 x 坐标为图像宽度的%
                                       y: _background.height * 0.06// 按钮 y 坐标为图像高度的%

                                       contentItem: Column {
                                           // anchors.centerIn: parent
                                           Image {
                                                      anchors.fill: parent
                                                      source: "qrc:/images/dialog.png" // 确保图片路径正确
                                                  }

                        Button {
                                    text: "创建房间"
                                    width: popup.width*0.6
                                    height: popup.height * 0.14//按钮大小
                                    x: _background.width * 0.06 // 按钮 x 坐标为图像宽度的%
                                    y: _background.height * 0.1 // 按钮 y 坐标为图像高度的%
                                    font.pixelSize: _background.width * 0.03
                                    font.bold: true // 设置
                                      background: Rectangle {
                                                color: "transparent"
                                                      }
                                      onClicked: {
                                          console.log("创建房间");
                                          creatroomscene()
                                          popup.close()
                                          // 这里可以添加进一步的逻辑，根据每个选项的选择进入不同的场景

                                      }
                                      }
                       Button {
                                    text: "加入房间"
                                    width: popup.width*0.6
                                    height: popup.height * 0.14//按钮大小
                                    x: _background.width * 0.06 // 按钮 x 坐标为图像宽度的%
                                    y: _background.height * 0.3 // 按钮 y 坐标为图像高度的%
                                    font.pixelSize: _background.width * 0.03
                                    font.bold: true // 设置
                                    background: Rectangle {
                                                    color: "transparent"
                                                                         }
                                    onClicked: {
                                        console.log("加入房间");
                                        // 这里可以添加进一步的逻辑，根据每个选项的选择进入不同的场景
                                        joinroomscene()
                                        popup.close()

                                    }
                                                                }
                      Button {
                                           text: "选择棋子"
                                           width: popup.width*0.6
                                           height: popup.height * 0.14//按钮大小
                                           x: _background.width * 0.06 // 按钮 x 坐标为图像宽度的%
                                           y: _background.height * 0.53 // 按钮 y 坐标为图像高度的%
                                           font.pixelSize: _background.width * 0.03
                                           font.bold: true // 设置
                                           background: Rectangle {
                                                        color: "transparent"

                                                                }
                                           onClicked: {
                                               console.log("返回游戏");
                                               // 这里可以添加进一步的逻辑，根据每个选项的选择进入不同的场景
                                              popup.close()
                                               popup1.open()
                                               // startgame()//只是为了看到界面测试，startgame（）在连接时调用
                                           }
                                       }
                                   }
                            }

                Popup {
                                       id: popup1
                                       visible: false
                                       width: _background.width*0.55
                                       height: _background.height * 0.75//弹窗大小
                                       modal: true

                                       // 设置弹窗的位置
                                       x: _background.width * 0.25 // 按钮 x 坐标为图像宽度的%
                                       y: _background.height * 0.06// 按钮 y 坐标为图像高度的%

                                       contentItem: Column {
                                           // anchors.centerIn: parent
                                           Image {
                                                      anchors.fill: parent
                                                      source: "qrc:/images/xz.png" // 确保图片路径正确
                                                  }

                                           Button {
                                               id:button1
                                                       text: "红色方"
                                                       width: popup.width*0.4
                                                       height: popup.height * 0.14//按钮大小
                                                       x: _background.width * 0.06 // 按钮 x 坐标为图像宽度的%
                                                       y: _background.height * 0.14 // 按钮 y 坐标为图像高度的%
                                                       font.pixelSize: _background.width * 0.03
                                                       font.bold: true // 设置
                                                         background: Rectangle {
                                                                   color: "transparent"
                                                             // color:"red"
                                                                         }
                                                         onClicked: {
                                                             // background.color = "red"
                                                             // console.log("红色方");
                                                             if (selectedButtonId !== "button1") {
                                                                            // 取消其他按钮的选中状态
                                                                            if (selectedButtonId === "button2") button2.color = "transparent";
                                                                            if (selectedButtonId === "button3") button3.color = "transparent";
                                                                            if (selectedButtonId === "button4") button4.color = "transparent";
                                                                            // 设置当前按钮的选中状态
                                                                            selectedButtonId = "button1";
                                                                            // 添加选中样式
                                                                            background.color = "red"
                                                                        } else {
                                                                            // 如果点击的是已经选中的按钮，则取消选中
                                                                            selectedButtonId = "";
                                                                            background.color = "transparent"
                                                                        }
                                                             // 这里可以添加进一步的逻辑，根据每个选项的选择进入不同的场景

                                                         }
                                                         }
                                           Button {
                                               id:button2
                                                       text: "绿色方"
                                                       width: popup.width*0.4
                                                       height: popup.height * 0.14//按钮大小
                                                       x: _background.width * 0.35 // 按钮 x 坐标为图像宽度的%
                                                       y: _background.height * 0.14 // 按钮 y 坐标为图像高度的%
                                                       font.pixelSize: _background.width * 0.03
                                                       font.bold: true // 设置
                                                         background: Rectangle {
                                                                   color: "transparent"
                                                             // color:"lightgreen"
                                                                         }
                                                         onClicked: {
                                                             // background.color = "lightgreen"
                                                             // console.log("橙色方");
                                                             if (selectedButtonId !== "button2") {
                                                                            // 取消其他按钮的选中状态
                                                                            if (selectedButtonId === "button1") button1.color = "transparent";
                                                                            if (selectedButtonId === "button3") button3.color = "transparent";
                                                                            if (selectedButtonId === "button4") button4.color = "transparent";
                                                                            // 设置当前按钮的选中状态
                                                                            selectedButtonId = "button2";
                                                                            // 添加选中样式
                                                                            background.color = "lightgreen"
                                                                        } else {
                                                                            // 如果点击的是已经选中的按钮，则取消选中
                                                                            selectedButtonId = "";
                                                                            background.color = "transparent"
                                                                        }

                                                             // 这里可以添加进一步的逻辑，根据每个选项的选择进入不同的场景

                                                         }
                                                         }
                                           Button {
                                               id:button3
                                                       text: "蓝色方"
                                                       width: popup.width*0.4
                                                       height: popup.height * 0.14//按钮大小
                                                       x: _background.width * 0.06 // 按钮 x 坐标为图像宽度的%
                                                       y: _background.height * 0.42 // 按钮 y 坐标为图像高度的%
                                                       font.pixelSize: _background.width * 0.03
                                                       font.bold: true // 设置
                                                         background: Rectangle {
                                                                   color: "transparent"
                                                             // color:"lightgreen"
                                                                         }
                                                         onClicked: {
                                                             // background.color = "lightblue"
                                                             // console.log("蓝色方");
                                                             if (selectedButtonId !== "button3") {
                                                                            // 取消其他按钮的选中状态
                                                                            if (selectedButtonId === "button1") button1.color = "transparent";
                                                                            if (selectedButtonId === "button2") button2.color = "transparent";
                                                                            if (selectedButtonId === "button4") button4.color = "transparent";
                                                                            // 设置当前按钮的选中状态
                                                                            selectedButtonId = "button3";
                                                                            // 添加选中样式
                                                                            background.color = "lightblue"
                                                                        } else {
                                                                            // 如果点击的是已经选中的按钮，则取消选中
                                                                            selectedButtonId = "";
                                                                            background.color = "transparent"
                                                                        }

                                                             // 这里可以添加进一步的逻辑，根据每个选项的选择进入不同的场景

                                                         }
                                                         }
                                           Button {
                                               id:button4
                                                       text: "橙色方"
                                                       width: popup.width*0.4
                                                       height: popup.height * 0.14//按钮大小
                                                       x: _background.width * 0.32 // 按钮 x 坐标为图像宽度的%
                                                       y: _background.height * 0.42 // 按钮 y 坐标为图像高度的%
                                                       font.pixelSize: _background.width * 0.03
                                                       font.bold: true // 设置
                                                         background: Rectangle {
                                                                   color: "transparent"
                                                             // color:"lightgreen"
                                                                         }
                                                         onClicked: {
                                                             // background.color = "#FFD580"
                                                             // console.log("橙色方");
                                                             if (selectedButtonId !== "button4") {
                                                                            // 取消其他按钮的选中状态
                                                                            if (selectedButtonId === "button1") button1.color = "transparent";
                                                                            if (selectedButtonId === "button3") button3.color = "transparent";
                                                                            if (selectedButtonId === "button2") button2.color = "transparent";
                                                                            // 设置当前按钮的选中状态
                                                                            selectedButtonId = "button4";
                                                                            // 添加选中样式
                                                                            background.color = "#FFD580"
                                                                        } else {
                                                                            // 如果点击的是已经选中的按钮，则取消选中
                                                                            selectedButtonId = "";
                                                                            background.color = "transparent"
                                                                        }

                                                             // 这里可以添加进一步的逻辑，根据每个选项的选择进入不同的场景

                                                         }
                                                         }
                                           Button {
                                                       text: "开始"
                                                       width: popup.width*0.4
                                                       height: popup.height * 0.14//按钮大小
                                                       x: _background.width * 0.4 // 按钮 x 坐标为图像宽度的%
                                                       y: _background.height * 0.65 // 按钮 y 坐标为图像高度的%
                                                       font.pixelSize: _background.width * 0.03
                                                       font.bold: true // 设置
                                                         background: Rectangle {
                                                                   color: "transparent"
                                                             // color:"lightgreen"
                                                                         }
                                                         onClicked: {

                                                             console.log("开始游戏");

                                                             popup1.close()
                                                             startgame()

                                                             // 这里可以添加进一步的逻辑，根据每个选项的选择进入不同的场景

                                                         }
                                                         }
                                       }
                }
                    // onClicked: {
                    //     console.log("游戏开始");
                    //     // 这里可以添加进一步的逻辑，根据每个选项的选择进入不同的场景
                    //     startgame()
                    // }
                    HoverHandler{
                         cursorShape: Qt.PointingHandCursor
                    }



}







