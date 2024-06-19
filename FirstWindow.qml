import QtQuick
import QtLocation
import QtPositioning
Image{
    property alias startbutton:startButtonArea
    signal isclicked()
    // visible: true
    id:myImage
    source: "qrc:/images/start1.png"
    anchors.fill: parent
     // fillMode: Image.PreserveAspectFit
    Component.onCompleted: {
               if (myImage.status === Image.Ready) {
                   console.log("图片加载成功");
               } else if (myImage.status === Image.Error) {
                   console.error("图片加载失败: " + myImage.errorString);
               }

        }
    // TapHandler{
    //     id:tapHandler
    //     onTapped: (eventPoint)=> {console.log( eventPoint.scenePosition.y)}
    // }
        Rectangle {
            id: startButtonArea
            color: "transparent"
            width: myImage.width * 0.15 // 按钮宽度为图像宽度的30%
            height: myImage.height * 0.15 // 按钮高度为图像高度的10%
            x: myImage.width * 0.43 // 按钮 x 坐标为图像宽度的25%
            y: myImage.height * 0.53 // 按钮 y 坐标为图像高度的60%
            TapHandler {
                cursorShape: Qt.PointingHandCursor
                onTapped: {
                    console.log("开始按钮被点击")
                    isclicked()
                }

            }
        }

}
