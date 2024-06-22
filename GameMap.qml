import QtQuick
import QtQuick.Layouts
import "PlaneController.js" as PlaneController
Item{
    anchors.fill: parent
    property double longs:mainmap.longs
    property alias mainmaps:mainmap
    property alias green1:_green1
    MainMap {
        id:mainmap
        anchors.fill: parent
    }
    Plane{
        id:_green1
        planesize: mainmap.orangescreen.width*0.4
        startplanex:mainmap.orangescreen.width*0.39
        startplaney:mainmap.orangescreen.height*0.07
        type:1
        longs:parent.longs

    }
    // Component.onCompleted: {
    //     PlaneController.printPlaneDetails(_green1.planesize, _green1.startplanex, _green1.startplaney)
    // }


}
