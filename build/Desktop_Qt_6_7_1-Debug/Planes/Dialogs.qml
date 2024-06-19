import QtQuick
import QtQuick.Dialogs
Item {
    property  alias aboutDialog:_aboutDialog
    MessageDialog{
        id:_aboutDialog
        modality: Qt.WindowModal
        buttons:MessageDialog.Ok
        text:"Plane"
        informativeText:"445"
        detailedText:"655"
    }
}
