import QtQuick
import QtQuick.Layouts
import "PlaneController.js" as PlaneController
Item{
    anchors.fill: parent
    property double longs:mainmap.longs
    property alias mainmaps:mainmap
    property alias green1:_green1
    property alias green2:_green2
    property alias green3:_green3
    property alias green4:_green4
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
    Plane{
        id:_green2
        planesize: mainmap.orangescreen.width*0.4
        startplanex:mainmap.orangescreen.width*0.9
        startplaney:mainmap.orangescreen.height*0.072
        longs:parent.longs
        type:1
    }
    Plane{
        id:_green3
        planesize: mainmap.orangescreen.width*0.4
        startplanex:mainmap.orangescreen.width*0.39
        startplaney:mainmap.orangescreen.height*0.58
        longs:parent.longs
        type:1
    }
    Plane{
        id:_green4
        planesize: mainmap.orangescreen.width*0.4
        startplanex:mainmap.orangescreen.width*0.9
        startplaney:mainmap.orangescreen.height*0.58
       longs:parent.longs
        type:1
    }
    // Component.onCompleted: {
    //     PlaneController.printPlaneDetails(_green1.planesize, _green1.startplanex, _green1.startplaney)
    // }


}
