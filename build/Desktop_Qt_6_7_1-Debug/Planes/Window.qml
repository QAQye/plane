import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtMultimedia
import "Controller.js" as Controller

ApplicationWindow {
    id: appWindow
    visible: true
    // 显示整个电脑屏幕的一半
    width: screen.width / 2
    height: screen.height / 2
    title: "飞行棋游戏"

    // 添加菜单栏
    menuBar: MenuBar {
        id: appMenuBar
        Menu {
            title: "开始"
            icon.name: "document-new"  // 添加图标
            MenuItem {
                action: actions.stopAction
                icon.name: "media-playback-stop"  // 添加图标
            }
            MenuItem {
                action: actions.exit
                icon.name: "application-exit"  // 添加图标
            }
            // 在菜单中再次添加一个菜单
            Menu {
                title: "设置"
                icon.name: "preferences-system"  // 添加图标
                Menu {
                    title: "音乐"
                    icon.name: "media-playback-start"  // 添加图标
                    MenuItem {
                        text: "播放/暂停"
                        anchors.bottom: parent.bottom
                        anchors.horizontalCenter: parent.horizontalCenter
                        onClicked: {
                            music.bgm.playbackState === MediaPlayer.PlayingState ? music.bgm.pause() : music.bgm.play();
                        }
                    }
                }
            }
            MenuItem {
                action: actions.about
                icon.name: "help-about"  // 添加图标
            }
        }
    }



    Actions{
        id:actions
        about.onTriggered: content.dialogs.about.open()

    }

    MusicPlay {
        id: music
        anchors.centerIn: parent
    }

    Content {
        id: content
    }

    Component.onCompleted: {
        Controller.init()
    }

    // 定义 Actions 组件
}
