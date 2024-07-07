import QtQuick
import QtQuick.Dialogs

Item {
    property alias about: _about

    MessageDialog {
        id: _about
        modality: Qt.WindowModal
        buttons: MessageDialog.Ok
        text: "<b>开发团队介绍</b><br>"+"<b>开发成员:</b> 黄棪峰，艾乐妍，彭家乐<br>"
              + "<b>学号:</b> 2022051615094，2022051615100，2022051615028<br><br>"
              + "<i>开发不易，请多打分谢谢！</i>"
    }
}
