import QtQuick
import QtQuick.Controls
Item {
    property  alias exit: _exitAction
    property  alias about: _aboutAction
    property  alias stopAction: _stopAction
    property   alias music: _music
    Action{
        id:_exitAction
        // icon.name:
        text: qsTr("退出")
        onTriggered: {
            // 如果点击按钮那么退出
            Qt.quit()
        }

    }
    Action{
        id:_aboutAction
        text: "关于我们"
    }
    Action{
        id:_stopAction
        text: "暂停"
    }
    Action{
        id:_music
        text: "音乐"
    }

}
