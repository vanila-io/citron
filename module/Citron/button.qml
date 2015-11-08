import QtQuick 2.5
import QtQuick.Controls 1.4 as QtQuick
import QtQuick.Controls.Styles 1.4

import Citron 1.0

QtQuick.Button
{
    id: root;

    property bool narrow: false;
    property string backgroundColor;
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

        background: Rectangle 
        {
            color: Color.resolve(root.backgroundColor);
            border.width: 0
            radius: 3
            scale: control.pressed ? 0.9 : 1;

            states : State 
            {
                name: 'clicked';
                when: control.pressed;

                PropertyChanges { target: parent; scale: '0.9'; }
            }

            transitions: Transition 
            {
                NumberAnimation { properties: 'scale'; duration: animationDuration; }
            }
        }

        label: QtQuick.Label
        {
            text: control.text;
            color: Color.resolve(root.textColor);
            font.family: 'Helvetica Neue';
            font.pointSize: root._size;

            states : State 
            {
                name: 'clicked';
                when: control.pressed;

                PropertyChanges { target: parent; scale: '0.9'; }
            }

            transitions: Transition 
            {
                NumberAnimation { properties: 'scale'; duration: animationDuration; }
            }
        }
    }
}

