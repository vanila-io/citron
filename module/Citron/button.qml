import QtQuick 2.5
import QtQuick.Controls 1.3
import QtQuick.Controls.Styles 1.4

Button 
{
    id: root;

    property string backgroundColor: '';
    property string textColor: '';

    style: ButtonStyle 
    {
        property int animationDuration: 75;

        padding 
        {
            left: 32;
            right: 32;
            top: 16;
            bottom: 16;
        }

        background: Rectangle 
        {
            color: root.backgroundColor;
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

        label: Label
        {
            text: control.text;
            color: '#e1ecfd';
            font.family: 'Helvetica Neue';
            font.pointSize: 20

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

