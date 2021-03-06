import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 1.4 as Controls
import Citron 1.0

Window {
    visible: true
    width: 640;
    height: 480;

    TopBar
    {
        title: 'An awesome app';
        description: 'The incredible splash screen';
        icon: 'globe'
    }

    Column
    {
        anchors.centerIn: parent;
        spacing: 10;

        Row
        {
            anchors.horizontalCenter: parent.horizontalCenter;
            spacing: 10;

            Column
            {
                spacing: 10;

                Button
                {
                    text: 'A large button';
                    textColor: 'white';
                    size: 'm1';
                    narrow: false;
                }

                Button
                {
                    text: 'A narrow button';
                    textColor: 'white';
                    size: 'm1';
                    narrow: true;
                }
            }

            Column
            {
                spacing: 10;

                CheckBox
                {
                    text: 'Checked'
                    checked: true;
                }

                CheckBox
                {
                    text: 'Unchecked'
                    checked: false;
                }
            }

            Column
            {
                spacing: 10;

                Controls.ExclusiveGroup
                {
                    id: radiobuttons;
                }

                RadioButton
                {
                    text: 'First RadioButton';
                    checked: true;
                    exclusiveGroup: radiobuttons;
                }

                RadioButton
                {
                    text: 'Second RadioButton';
                    exclusiveGroup: radiobuttons;
                }
            }

            Column
            {
                ComboBox
                {
                    width: 200
                    model: [ "Banana", "Apple", "Coconut", "Victor Collin" ]
                }
            }
        }

        Row
        {
            anchors.horizontalCenter: parent.horizontalCenter;
            spacing: 10;

            Slider
            {
                anchors.verticalCenter: parent.verticalCenter;

                id: slider;
                //tickmarksEnabled: true;
                width: 200;
                minimumValue: 0;
                maximumValue: 100;
                value: 50;
            }

            ProgressBar
            {
                anchors.verticalCenter: parent.verticalCenter;

                minimumValue: 0;
                maximumValue: 100;
                value: slider.value;
            }
        }

        Row
        {
            anchors.horizontalCenter: parent.horizontalCenter;
            spacing: 10;

            ProgressBar
            {
                anchors.verticalCenter: parent.verticalCenter;
                width: 200;
                height: 5;
                indeterminate: true;
            }
        }

        Row
        {
            anchors.horizontalCenter: parent.horizontalCenter;
            spacing: 10;

            Switch
            {
                checked: true;
            }

            Switch
            {
                checked: false;
            }
        }
    }
}
