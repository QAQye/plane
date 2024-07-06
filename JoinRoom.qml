import QtQuick
import QtQuick 2.15
import QtQuick.Controls 2.15
import Connect 1.0
Image{
    signal sendMes
    signal gamePressed
    signal connectSig(var p,var i)
    signal disConnect_Connect

    property int row1
    property int col1
    property int row2
    property int col2

    id: joinRoomScene
    anchors.fill: parent
    source: "qrc:/images/se1.png"
    Rectangle {
        id: startcreat
        width: joinRoomScene.width * 0.32
        height: joinRoomScene.height * 0.1 // rectangle大小
        color: "transparent"
        x: joinRoomScene.width * 0.3 // 按钮 x 坐标为图像宽度的%
        y: joinRoomScene.height * 0.28 // 按钮 y 坐标为图像高度的%

        Text {
            text: "加入房间:"
            font.pixelSize: joinRoomScene.width * 0.04
            font.bold: true // 设置
            horizontalAlignment: Text.AlignHCenter // 水平居中
            verticalAlignment: Text.AlignVCenter // 垂直居中
            anchors.centerIn: parent // 确保文本在父组件中居中
        }
    }
    Rectangle{
        id:port
        width: joinRoomScene.width*0.32
        height: joinRoomScene.height * 0.1//rectangle大小
        color: "transparent"
        // color: "red"
        x: joinRoomScene.width * 0.09 // 按钮 x 坐标为图像宽度的%
        y: joinRoomScene.height * 0.64 // 按钮 y 坐标为图像高度的%
        Text{
        text:"Port:"
        font.pixelSize: joinRoomScene.width * 0.03
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
        id:id
        width: joinRoomScene.width*0.32
        height: joinRoomScene.height * 0.1//rectangle大小
        color: "transparent"
        // color: "red"
        x: joinRoomScene.width * 0.56 // 按钮 x 坐标为图像宽度的%
        y: joinRoomScene.height * 0.64 // 按钮 y 坐标为图像高度的%
        Text{
        text:"IP:"
        font.pixelSize: joinRoomScene.width * 0.03
        font.bold: true // 设置
        }
    TextField {
            id: inputip
            // anchors.centerIn: parent
            anchors.right: parent.right
            anchors.verticalCenter: parent.verticalCenter
            width: port.width*0.68
            height: port.height*0.7

            text: "请输入id"
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
    Button {
        id: joinButton
        text: "加入"
        // 设置文本颜色为黑色

        // ColorAnimation {
        //     from: "white"
        //     to: "black"
        //     duration: 200
        // }
        // 根据按钮的宽度和高度设置字体大小
        font.pixelSize: joinRoomScene.width * 0.04
        // 设置按钮的宽度和高度
        width: joinRoomScene.width * 0.16
        height: joinRoomScene.height * 0.1
        // 设置按钮的位置
        x: joinRoomScene.width * 0.83 // 水平居中
        y: joinRoomScene.height * 0.85 // 按钮 y 坐标为图像高度的10%
        // 设置按钮的背景颜色
        background:Rectangle {
            color: "transparent"
        }
        TapHandler{
            onTapped: {
                connectSig(inputport.getText(0,6),inputip.getText(0,15))
            }
        }
    }
    Component.onCompleted: {
        connectSig.connect(connect.portSlot)
    }

    //c++注册的客户端对象
    Connect{
        id:connect

        onConnectSuccess: {
            gamePressed()
            gameScene.camp = 1
            gameScene.init()
        }

        //接受成功则移动棋子
        onReceiveOk: {
            row1=connect.firstrow
            col1=connect.firstcol
            row2=connect.row
            col2=connect.col
            console.log(row1,col1,row2,col2)
            gameScene.move_connect()
        }

        //发送成功
        onWriteOk: {
            console.log("S write ok")
        }

        //断开连接显示提示断开对话框
        onDisConnectSignal: {
            gameScene.disConnect()
        }
    }

    //收到发送信息信号就调用c++对象的棋子位置移动函数
    onSendMes:{
        console.log(row1,col1,row2,col2)
        connect.xyChangedSlot(row1, col1, row2, col2)
    }

    onDisConnect_Connect: {
        connect.disConnect()
    }
}

