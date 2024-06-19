import QtQuick
import QtQuick.Controls
Item {
    property  alias exitAction: exitAction
    property  alias aboutAction: aboutAction
    property  alias stopAction: stopAction
    Action{
        id:exitAction
        // icon.name:
        text: qsTr("exit")

    }
    Action{
        id:aboutAction
        text: "about"

    }
    Action{
        id:stopAction
        text: "stop"
    }

}
