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
    property alias orange1:_orange1
    property alias orange2:_orange2
    property alias orange3:_orange3
    property alias orange4:_orange4
    property alias red1:_red1
    property alias red2:_red2
    property alias red3:_red3
    property alias red4:_red4
    property alias blue1:_blue1
    property alias blue2:_blue2
    property alias blue3:_blue3
    property alias blue4:_blue4
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

            Plane{
                id:_orange1
                planesize: mainmap.orangescreen.width*0.4
                startplanex:mainmap.orangescreen.width*0.39
                startplaney:mainmap.orangescreen.height*0.05+mainmap.orangescreen.y
                planesource:"qrc:/images/plane_yellow_b.png"
                longs:parent.longs
                type:2
            }
            Plane{
                id:_orange2
                planesize: mainmap.orangescreen.width*0.4
                startplanex:mainmap.orangescreen.width*0.9
                startplaney:mainmap.orangescreen.height*0.05+mainmap.orangescreen.y
                planesource:"qrc:/images/plane_yellow_b.png"
                longs:parent.longs
                type:2

            }
            Plane{
                id:_orange3
                planesize: mainmap.orangescreen.width*0.4
                startplanex:mainmap.orangescreen.width*0.39
                startplaney:mainmap.orangescreen.height*0.56+mainmap.orangescreen.y
                planesource:"qrc:/images/plane_yellow_b.png"
                longs:parent.longs
                type:2
            }
            Plane{
                id:_orange4
                planesize: mainmap.orangescreen.width*0.4
                startplanex:mainmap.orangescreen.width*0.9
                startplaney:mainmap.orangescreen.height*0.56+mainmap.orangescreen.y
                planesource:"qrc:/images/plane_yellow_b.png"
                longs:parent.longs
                type:2
            }
            Plane{
                id:_blue1
                planesize: mainmap.orangescreen.width*0.4
                startplanex:mainmap.orangescreen.width*4.68
                startplaney:mainmap.orangescreen.height*0.05+mainmap.orangescreen.y
                planesource:"qrc:/images/plane_blue_b.png"
                longs:parent.longs
                type:3
            }
            Plane{
                id:_blue2
                planesize: mainmap.orangescreen.width*0.4
                startplanex:mainmap.orangescreen.width*4.17
                startplaney:mainmap.orangescreen.height*0.05+mainmap.orangescreen.y
                planesource:"qrc:/images/plane_blue_b.png"
                longs:parent.longs
                type:3
            }
            Plane{
                id:_blue3
                planesize: mainmap.orangescreen.width*0.4
                startplanex:mainmap.orangescreen.width*4.68
                startplaney:mainmap.orangescreen.height*0.56+mainmap.orangescreen.y
                planesource:"qrc:/images/plane_blue_b.png"
                longs:parent.longs
                type:3
            }
            Plane{
                id:_blue4
                planesize: mainmap.orangescreen.width*0.4
                startplanex:mainmap.orangescreen.width*4.17
                startplaney:mainmap.orangescreen.height*0.56+mainmap.orangescreen.y
                planesource:"qrc:/images/plane_blue_b.png"
                longs:parent.longs
                type:3
            }
              Plane{
                id:_red1
                planesize:mainmap.orangescreen.width*0.4
                startplanex:mainmap.orangescreen.width*4.68//
                startplaney:mainmap.orangescreen.height*0.58//
                planesource:"qrc:/images/plane_red_b.png"
                longs:parent.longs
                type:4
            }
            Plane{
                id:_red2
                planesize: mainmap.orangescreen.width*0.4
                 startplanex:mainmap.orangescreen.width*4.68
                 startplaney:mainmap.orangescreen.height*0.072
                planesource:"qrc:/images/plane_red_b.png"
                longs:parent.longs
                type:4
            }
            Plane{
                id:_red3
                planesize: mainmap.orangescreen.width*0.4
                startplanex:mainmap.orangescreen.width*4.17
                startplaney:mainmap.orangescreen.height*0.58
                planesource:"qrc:/images/plane_red_b.png"
                longs:parent.longs
                type:4
            }
            Plane{
                id:_red4
                planesize: mainmap.orangescreen.width*0.4
                 startplanex:mainmap.orangescreen.width*4.17
                 startplaney:mainmap.orangescreen.height*0.072
                planesource:"qrc:/images/plane_red_b.png"
                longs:parent.longs
                type:4

            }
  }




    // Component.onCompleted: {
    //     PlaneController.printPlaneDetails(_green1.planesize, _green1.startplanex, _green1.startplaney)
    // }



