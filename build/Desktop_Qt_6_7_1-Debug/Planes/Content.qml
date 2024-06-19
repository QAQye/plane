import QtQuick

Item {
    id: content
    anchors.fill: parent

    Loader {
        id: contentLoader
        source: "2.qml"
        anchors.fill: parent
    }

    Component.onCompleted: {
        console.log("Content loaded")
    }
}

