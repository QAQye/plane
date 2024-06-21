import QtQuick
import QtQuick.Dialogs
Item {
    property  alias about:_about
    MessageDialog{
        id:_about
        modality: Qt.WindowModal
        buttons:MessageDialog.Ok
        text:"Plane"
        informativeText:"445"
        detailedText:"655"
    }
}
