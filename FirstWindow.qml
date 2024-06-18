import QtQuick
import QtLocation
import QtPositioning
Image{
    signal  issucessclicked(eventPoint xPos,eventPoint yPos)
    // visible: true
    id:myImage
    source: "qrc:/images/start.png"
    anchors.fill: parent
     // fillMode: Image.PreserveAspectFit
    Component.onCompleted: {
               if (myImage.status === Image.Ready) {
                   console.log("图片加载成功");
               } else if (myImage.status === Image.Error) {
                   console.error("图片加载失败: " + myImage.errorString);
               }

        }
    TapHandler{
        id:tapHandler
        onTapped: (eventPoint)=> {console.log( eventPoint.scenePosition.y)}
    }
    Item {
        property alias dialogs:dialog
        Rectangle {
            id: startButtonArea
            color: "transparent"
            width: myImage.width * 0.42 // 按钮宽度为图像宽度的30%
            height: myImage.height * 0.13 // 按钮高度为图像高度的10%
            x: myImage.width * 0.3 // 按钮 x 坐标为图像宽度的25%
            y: myImage.height * 0.75 // 按钮 y 坐标为图像高度的60%
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    dialog.text = "开始按钮被点击"
                    dialog.open()
                }
            }
        }
    }
    Dialogs {
            id: dialog

        }

}
