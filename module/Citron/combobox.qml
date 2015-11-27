import QtQuick 2.5 as QtQuick
import QtQuick.Controls 1.4 as QtQuickControls
import QtQuick.Controls.Styles 1.4

import Citron 1.0 as Citron

QtQuickControls.ComboBox
{
	menu: null;

	property int animationDuration: 225;

	style: ComboBoxStyle
	{
		textColor: 'black';
		selectionColor: Citron.Color.resolve(Citron.Theme.primaryColor);
		selectedTextColor: 'white';

		label: Citron.Label
        {
            text: control.currentText;
            style: 'black';
        }

		background: QtQuick.Rectangle
		{
			implicitWidth: control.width;
			implicitHeight: control.height + 16;
			color: Citron.Color.resolve(Citron.Theme.backgroundColor);
			border.width: 1;
			border.color: Citron.Color.resolve(Citron.Theme.primaryColor);

			QtQuick.Rectangle
			{
				anchors.right: parent.right;

				height: parent.height;
				width: parent.height;

				border.width: 1;
				border.color: Citron.Color.resolve(Citron.Theme.primaryColor);

				Citron.Icon
				{
					id: arrowIcon;
					anchors.centerIn: parent;
					style: Citron.Color.resolve(Citron.Theme.primaryColor);

					name: 'arrow_up';

					rotation: 180;

					states : [QtQuick.State 
		            {
		                name: 'pressed';
		                when: control.pressed;

	                    QtQuick.PropertyChanges { target: arrowIcon; rotation: '0'; }
		            },
		            QtQuick.State
		            {
		            	name: 'pressedBis';
		                when: control.pressed;

	                    QtQuick.PropertyChanges { target: arrowIcon; rotation: '360'; }
		            }]

	                transitions: QtQuick.Transition 
		            {
	                    QtQuick.NumberAnimation { properties: 'rotation'; duration: animationDuration; }
		            }
				}
			}
		}
	}
}
