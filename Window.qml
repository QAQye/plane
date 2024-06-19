import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import "Control.js" as Control
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
                action:actions.exitAction
            }
            // 在菜单中再次添加一个菜单
            Menu {
                title: "设置"
                MenuItem {
                    action: actions.music
                }
            }
            MenuItem {
                action: actions.aboutAction
            }
        }
    }
    Actions{
        id:actions
        aboutAction.onTriggered: content.dialogs.aboutDialog.open()
    }
    Content{
        id:content
    }
    Component.onCompleted: {
        Control.init()

    }

    // 定义 Actions 组件

}
