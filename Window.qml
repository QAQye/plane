import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtMultimedia
import "Control.js" as Controller

ApplicationWindow {
    id:appWindow
    visible: true
    // 显示整个电脑屏幕的一半
    width: screen.width / 2
    height: screen.height / 2
    // 添加菜单栏
    menuBar: MenuBar {
        id: appMenuBar
        Menu {
            title: "开始"
            MenuItem {
                action: actions.stopAction
            }
            MenuItem {
                action:actions.exit
            }
            // 在菜单中再次添加一个菜单
            Menu {
                title: "设置"
                MenuItem {
                    action: actions.music
                }
            }
            MenuItem {
                action: actions.about
            }
        }
    }
    Actions{
        id:actions
        about.onTriggered: content.dialogs.aboutDialog.open()
    }

    MusicPlay{
        id:music
    }
    Content{
        id:content
    }
    Component.onCompleted: {
        Controller.init()

    }

    // 定义 Actions 组件

}
