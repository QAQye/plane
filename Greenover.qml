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
}
