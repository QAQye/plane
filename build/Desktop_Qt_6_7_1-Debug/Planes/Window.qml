import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
ApplicationWindow {
    visible: true
    // 显示整个电脑屏幕的一半
    width: screen.width/2
    height:screen.height/2
    // 添加菜单拦
    // MenuBar 本身不提供菜单项，而是用来包含多个 Menu 对象，
    // 每个 Menu 对象可以包含多个 MenuItem 或其他类型的菜单组件。
    menuBar:MenuBar{
        id:appMenuBar
        // 在菜单容器中先需要创建一个菜单再加入其菜单项
        Menu{
            title:"开始"
            MenuItem{
                text:"暂停"
                action: actions.stopAction
                onTriggered: {
                    // 如果点击按钮那么退出
                    console.log("stop")
                }
            }
            MenuItem{
                text:"退出"
                action: actions.exitAction
                onTriggered: {
                    // 如果点击按钮那么退出
                    Qt.quit();
                }
            }
            // 在菜单中再次添加一个菜单
                Menu{
                    title:"设置"
                    MenuItem{
                        text:"音乐"
                        onTriggered: {
                            console.log("music")
                        }
                    }
                }
                MenuItem{
                    // MenuItem中同时指定了text属性和action属性，那么text属性会覆盖action中的text属性。
                    text:"关于我们"
                    action: actions.aboutAction
                    onTriggered: {
                        console.log("about")
                    }
                }

            }

        }
    Content{
        id:content
        Component.onCompleted: {
            console.log("aaa")
        }

    }


    Actions{
        id:actions

    }
}
