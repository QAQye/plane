import QtQuick
import QtQuick.Dialogs
Item{
    property  alias firstwindow: _firstwindow
    anchors.fill: parent
    FirstWindow{
        id:_firstwindow

    }
}
