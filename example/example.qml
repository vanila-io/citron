import QtQuick 2.5
import QtQuick.Window 2.2
import Citron 1.0

Window {
    visible: true

    MouseArea {
        anchors.fill: parent
        onClicked: {
            Qt.quit();
        }
    }

    Text {
        text: qsTr("Hello World")
        anchors.centerIn: parent
    }

    Button
    {
        text:'Cool!';
        backgroundColor: Color.resolveColor('blue-50');
    }
}

