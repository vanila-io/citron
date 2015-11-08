import QtQuick 2.5 as QtQuick
import QtQuick.Controls 1.4 as QtQuickControls
import QtQuick.Controls.Styles 1.4

import Citron 1.0

QtQuickControls.Button
{
    id: root;

    property bool narrow: false;
    property string backgroundColor: Theme.accentColor;
    property string textColor;
    property string size;

    property string _size: Size.resolve(size);

    style: ButtonStyle 
    {
        property int animationDuration: 75;

        padding 
        {
            left: narrow ? _size : _size * 2;
            right: narrow ? _size : _size * 2;
            top: narrow ? _size / 2 : _size;
            bottom: narrow ? _size / 2 : _size;
        }

        background: QtQuick.Rectangle 
        {
            color: Color.resolve(root.backgroundColor);
            border.width: 0
            radius: 3
            scale: control.pressed ? 0.9 : 1;

            states : QtQuick.State 
            {
                name: 'clicked';
                when: control.pressed;

                QtQuick.PropertyChanges { target: parent; scale: '0.9'; }
            }

            transitions: QtQuick.Transition 
            {
                QtQuick.NumberAnimation { properties: 'scale'; duration: animationDuration; }
            }
        }

        label: Label
        {
            text: control.text;
            style: root.textColor;
            size: root.size;

            states : QtQuick.State 
            {
                name: 'clicked';
                when: control.pressed;

                QtQuick.PropertyChanges { target: parent; scale: '0.9'; }
            }

            transitions: QtQuick.Transition 
            {
                QtQuick.NumberAnimation { properties: 'scale'; duration: animationDuration; }
            }
        }
    }
}

