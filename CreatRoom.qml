import QtQuick
import QtQuick 2.15
import QtQuick.Controls 2.15
import Server 1.0
Image{
    signal gamePressed()
    signal disConnect_server
    signal sendMesgamePressed()
    signal portSig(var s)
    property alias servers:server
    id: createRoomScene
    anchors.fill: parent
        source: "qrc:/images/se1.png"
        Rectangle {
            id: startcreat
            width: createRoomScene.width * 0.32
            height: createRoomScene.height * 0.1 // rectangle大小
            color: "transparent"
            x: createRoomScene.width * 0.3 // 按钮 x 坐标为图像宽度的%
            y: createRoomScene.height * 0.28 // 按钮 y 坐标为图像高度的%

            Text {
                text: "创建房间:"
                font.pixelSize: createRoomScene.width * 0.04
                font.bold: true // 设置
                horizontalAlignment: Text.AlignHCenter // 水平居中
                verticalAlignment: Text.AlignVCenter // 垂直居中
                anchors.centerIn: parent // 确保文本在父组件中居中
            }
        }
        Rectangle{
            id:port
            width: createRoomScene.width*0.32
            height: createRoomScene.height * 0.1//rectangle大小
            color: "transparent"
            // color: "red"
            x: createRoomScene.width * 0.09 // 按钮 x 坐标为图像宽度的%
            y: createRoomScene.height * 0.64 // 按钮 y 坐标为图像高度的%
            Text{
            text:"Port:"
            font.pixelSize: createRoomScene.width * 0.03
            font.bold: true // 设置
            }
        TextField {
                id: inputport
                // anchors.centerIn: parent
                anchors.right: parent.right
                anchors.verticalCenter: parent.verticalCenter
                width: port.width*0.68
                height: port.height*0.7

                text: "请输入IP"
                color: "black" // 设置文字颜色为黑色
                        background: Rectangle { // 设置背景
                            color: "white" // 背景颜色为白色
                            implicitWidth: 200
                            implicitHeight: 30
                        }
                onTextChanged: {
                    console.log("输入框中的文本:", text)
                }
            }
        }
        Rectangle{
            id:localport
            width: createRoomScene.width*0.32
            height: createRoomScene.height * 0.1//rectangle大小
            color: "transparent"
            // color: "red"
            x: createRoomScene.width * 0.56 // 按钮 x 坐标为图像宽度的%
            y: createRoomScene.height * 0.64 // 按钮 y 坐标为图像高度的%

            Text {
                font.pixelSize: createRoomScene.width * 0.03
                font.bold: true // 设置
                text: "本地IP: "+server.ip

            }
}

        Button {
            id: createButton
            text: "创建"
            // 设置文本颜色为黑色

            // ColorAnimation {
            //     from: "white"
            //     to: "black"
            //     duration: 200
            // }
            // 根据按钮的宽度和高度设置字体大小
            font.pixelSize: createRoomScene.width * 0.04
            // 设置按钮的宽度和高度
            width: createRoomScene.width * 0.16
            height: createRoomScene.height * 0.1
            // 设置按钮的位置
            x: createRoomScene.width * 0.83 // 水平居中
            y: createRoomScene.height * 0.85 // 按钮 y 坐标为图像高度的10%
            // 设置按钮的背景颜色
            background:Rectangle {
                color: "transparent"
            }
            TapHandler{
                onTapped: {
                    portSig(inputport.getText(0,10))
                    waitMessage.visible = true
                }
            }
            // TapHandler{
            //     onTapped: {
            //         var portSig = localportText.text;
            //         // portSig(localport.getText(0,10))
            //         waitMessage.visible = true
            //     }
            // }
        }
        Component.onCompleted: {
            portSig.connect(server.portSlot)
        }

        Rectangle{
            id:waitMessage
            visible: false
            width: 180
            height: 40
             color: "transparent"
            x: createRoomScene.width * 0.4 // 按钮 x 坐标为图像宽度的%
            y: createRoomScene.height * 0.8 // 按钮 y 坐标为图像高度的%

            Text {
                text: "waiting..."
                font.pixelSize: 25
            }
        }



         //c++注册的服务端对象
         Server{
             id:server

             onConnectSuccess: {
                 gamePressed()
             }

             //接受成功则移动棋子
             onReceiveOk: {
                 row1=server.firstrow
                 col1=server.firstcol
                 row2=server.row
                 col2=server.col
                 console.log(row1,col1,row2,col2)
                 gameScene.move_server()
             }

             //发送成功
             onWriteOk: {
                 console.log("C write ok")
             }

             //断开连接显示提示断开对话框
             onDisConnectSignal: {
                 gameScene.disConnect()
             }
         }

         //收到发送信息信号就调用c++对象的棋子位置移动函数
         // onSendMes:{
         // }

         onDisConnect_server: {
             server.disConnect()
         }
}

