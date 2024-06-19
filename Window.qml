import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ApplicationWindow {
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
                text: "暂停"
                onTriggered: {
                    // 如果点击按钮那么退出
                    console.log("stop")
                }
            }
            MenuItem {
                text: "退出"
                onTriggered: {
                    // 如果点击按钮那么退出
                    Qt.quit()
                }
            }
            // 在菜单中再次添加一个菜单
            Menu {
                title: "设置"
                MenuItem {
                    text: "音乐"
                    onTriggered: {
                        console.log("music")
                    }
                }
            }
            MenuItem {
                // MenuItem中同时指定了text属性和action属性，那么text属性会覆盖action中的text属性。
                text: "关于我们"
                onTriggered: {
                    console.log("about")
                }
            }
        }
    }

    // 使用 Content 组件
    Loader {
        id: contentLoader
        source: "Content.qml"
        anchors.fill: parent
    }

    // 定义 Actions 组件
    Action {
        id: stopAction
        text: "暂停"
    }
    Action {
        id: exitAction
        text: "退出"
    }
    Action {
        id: aboutAction
        text: "关于我们"
    }
}
