import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtMultimedia
import "Controller.js" as Controller

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
            icon.name: "document-new"
            MenuItem {
                action: actions.stopAction
                 icon.name: "media-playback-stop"
            }
            MenuItem {
                action:actions.exit
                 icon.name: "application-exit"
            }
            // 在菜单中再次添加一个菜单
            Menu {
                title: "设置"
                 icon.name: "preferences-system"
                Menu {
                    title: "音乐"
                    icon.name: "media-playback-start"
                    MenuItem{
                        text: "播放/暂停"
                        anchors.bottom: parent.bottom
                        anchors.horizontalCenter: parent.horizontalCenter
                        onClicked: {
                            music.bgm.playbackState === MediaPlayer.PlayingState ? music.bgm.pause() :music.bgm.play();
                        }
                    }
                }
            }
            MenuItem {
                action: actions.about
                 icon.name: "help-about"
            }
        }

    }
    // Button{
    //     width:200
    //     height:60
    //     text:"调试"

    //     onClicked: {

    //         console.log("发送调试信息");
    //         client.sendMsg("你好服务器");
    //     }
    // }
    Actions{
        id:actions
        about.onTriggered: content.dialogs.about.open()
    }

    MusicPlay{
        id:music
         anchors.centerIn: parent
    }

    Content{
        id:content
    }
    Component.onCompleted: {
        Controller.init()

    }

    // 定义 Actions 组件

}

