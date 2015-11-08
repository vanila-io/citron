import QtQuick 2.5
import QtQuick.Window 2.2
import Citron 1.0

Window {
    visible: true
    width: 640;
    height: 480;

    TopBar
    {
        title: 'An awesome app';
        description: 'The incredible splash screen';
        backgroundColor: 'orange-50';
        icon: 'action-based/get-information'
    }

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
        backgroundColor: 'teal-60';
        textColor: 'white';
        size: 'm1';
        narrow: false;
    }
}

