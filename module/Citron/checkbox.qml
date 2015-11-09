import QtQuick 2.5 as QtQuick
import QtQuick.Controls 1.4 as QtQuickControls
import QtQuick.Controls.Styles 1.4

import Citron 1.0 as Citron

QtQuickControls.CheckBox
{
	style: CheckBoxStyle
	{

		property int animationDuration: 125;

		label: Citron.Label
        {
            text: control.text;
            style: 'black';
        }

        indicator: QtQuick.Rectangle 
        {
            implicitWidth: 16;
        	implicitHeight: 16;
            border.color: Citron.Color.resolve(Citron.Theme.primaryColor);
            border.width: 1;

            QtQuick.Rectangle 
            {
                id: checkedIndicator;
                visible: true;
                color: Citron.Color.resolve(Citron.Theme.accentColor);
                anchors.fill: parent;
                scale: 0;

	            states : QtQuick.State 
	            {
	                name: 'checked';
	                when: control.checked;

	                QtQuick.PropertyChanges { target: checkedIndicator; scale: '1'; }
	            }

	            transitions: QtQuick.Transition 
	            {
	                QtQuick.NumberAnimation { properties: 'scale'; duration: animationDuration; }
	            }
            }
        }
	}
}