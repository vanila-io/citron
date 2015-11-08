import QtQuick 2.5 as QtQuick
import QtQuick.Controls 1.4 as QtQuickControls
import QtQuick.Controls.Styles 1.4

import Citron 1.0 as Citron

QtQuickControls.CheckBox
{
	style: CheckBoxStyle
	{
		label: Citron.Label
        {
            text: control.text;
            style: 'black';
        }

        indicator: QtQuick.Rectangle 
        {
            implicitWidth: 16
        	implicitHeight: 16
            radius: 3
            border.color: control.activeFocus ? "darkblue" : "gray"
            border.width: 3

            QtQuick.Rectangle 
            {
                visible: control.checked
                color: "#555"
                border.color: "#333"
                radius: 1
                anchors.margins: 4
                anchors.fill: parent
            }
        }
	}
}