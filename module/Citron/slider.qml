import QtQuick 2.5 as QtQuick
import QtQuick.Controls 1.4 as QtQuickControls
import QtQuick.Controls.Styles 1.4

import Citron 1.0 as Citron

QtQuickControls.Slider
{
	tickmarksEnabled: true;
    stepSize: 1;

	style: SliderStyle
	{
		groove: QtQuick.Rectangle 
		{
            id: _groove;
            implicitWidth: control.width;
            implicitHeight: 4
            color: Citron.Color.resolve(Citron.Theme.primaryColor);
            radius: 2;
        }

        handle: QtQuick.Rectangle
        {
            id: _handle;
            anchors.centerIn: parent
            color: Citron.Color.resolve(Citron.Theme.accentColor);
            implicitWidth: 16
            implicitHeight: 16
            radius: 3;
        }

        tickmarks: QtQuick.Rectangle
        {
            x: (control.value / 100 * (control.width - styleData.handleWidth));
            y: 18;

            implicitWidth: 15;
            height: 30;
            radius: 8;

            color: Citron.Color.resolve(Citron.Theme.primaryColor);
            
            Citron.Label
            {
            	text: control.value;
                style: 'white';
            }
        } 

	}
}
