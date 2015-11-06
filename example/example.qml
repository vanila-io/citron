import QtQuick 2.5
import QtQuick.Window 2.2
import Citron 1.0

Window {
    visible: true
    width: 400;
    height: 120;


    MouseArea
    {
        anchors.fill: parent
        onClicked:
        {
            Qt.quit();
        }
    }

    Button
    {
        anchors.centerIn: parent;

        text: 'Hello world!';
        backgroundColor: 'blue-50';
        textColor: 'white';
        size: 's1';
        narrow: true;
    }
}

