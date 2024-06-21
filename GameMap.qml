import QtQuick
import QtQuick.Layouts
import "PlaneController.js" as PlaneController
MainMap {
    id:mainmap
    anchors.fill: parent
    property alias green1: _green1
    Plane{
        id:_green1
        planesize: orangescreen.width*0.4
        startplanex:orangescreen.width*0.39
        startplaney:orangescreen.height*0.07
        type:1


    }
    Plane{
        id:_green2
        planesize: orangescreen.width*0.4
        startplanex:orangescreen.width*0.9
        startplaney:orangescreen.height*0.072
        type:1
    }
    Plane{
        id:_green3
        planesize: orangescreen.width*0.4
        startplanex:orangescreen.width*0.39
        startplaney:orangescreen.height*0.58
        type:1
    }
    Plane{
        id:_green4
        planesize: orangescreen.width*0.4
        startplanex:orangescreen.width*0.9
        startplaney:orangescreen.height*0.58
        type:1
    }
    Plane{
        id:_orange1
        planesize: orangescreen.width*0.4
        startplanex:orangescreen.width*0.39
        startplaney:orangescreen.height*0.05+orangescreen.y
        planesource:"qrc:/images/plane_yellow_b.png"
        type:2
    }
    Plane{
        id:_orange2
        planesize: orangescreen.width*0.4
        startplanex:orangescreen.width*0.9
        startplaney:orangescreen.height*0.05+orangescreen.y
        planesource:"qrc:/images/plane_yellow_b.png"
        type:2

    }
    Plane{
        id:_orange3
        planesize: orangescreen.width*0.4
        startplanex:orangescreen.width*0.39
        startplaney:orangescreen.height*0.56+orangescreen.y
        planesource:"qrc:/images/plane_yellow_b.png"
        type:2
    }
    Plane{
        id:_orange4
        planesize: orangescreen.width*0.4
        startplanex:orangescreen.width*0.9
        startplaney:orangescreen.height*0.56+orangescreen.y
        planesource:"qrc:/images/plane_yellow_b.png"
        type:2
    }
    Plane{
        id:_blue1
        planesize: orangescreen.width*0.4
        startplanex:orangescreen.width*0.51+bluescreen.x
        startplaney:orangescreen.height*0.05+bluescreen.y
        planesource:"qrc:/images/plane_blue_b.png"
        type:3
    }
    Plane{
        id:_blue2
        planesize: orangescreen.width*0.4
        startplanex:orangescreen.width*0.01+bluescreen.x
        startplaney:orangescreen.height*0.05+bluescreen.y
        planesource:"qrc:/images/plane_blue_b.png"
        type:3
    }
    Plane{
        id:_blue3
        planesize: orangescreen.width*0.4
        startplanex:orangescreen.width*0.01+bluescreen.x
        startplaney:orangescreen.height*0.56+bluescreen.y
        planesource:"qrc:/images/plane_blue_b.png"
        type:3
    }
    Plane{
        id:_blue4
        planesize: orangescreen.width*0.4
        startplanex:orangescreen.width*0.51+bluescreen.x
        startplaney:orangescreen.height*0.56+bluescreen.y
        planesource:"qrc:/images/plane_blue_b.png"
        type:3
    }
    Plane{
        id:_red1
        planesize: orangescreen.width*0.4
        startplanex:orangescreen.width*0.01+bluescreen.x
        startplaney:orangescreen.height*0.07
        planesource:"qrc:/images/plane_red_b.png"
        type:4
    }
    Plane{
        id:_red2
        planesize: orangescreen.width*0.4
         startplanex:orangescreen.width*0.51+bluescreen.x
         startplaney:orangescreen.height*0.07
        planesource:"qrc:/images/plane_red_b.png"
        type:4
    }
    Plane{
        id:_red3
        planesize: orangescreen.width*0.4
        startplanex:orangescreen.width*0.01+bluescreen.x
        startplaney:orangescreen.height*0.58
        planesource:"qrc:/images/plane_red_b.png"
        type:4
    }
    Plane{
        id:_red4
        planesize: orangescreen.width*0.4
         startplanex:orangescreen.width*0.51+bluescreen.x
         startplaney:orangescreen.height*0.58
        planesource:"qrc:/images/plane_red_b.png"
        type:4

    }
    Component.onCompleted: {
        PlaneController.printPlaneDetails(_red4.planesize, _red4.startplanex, _red4.startplaney)
    }
}
