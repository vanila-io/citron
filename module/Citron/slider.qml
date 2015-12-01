import QtQuick 2.5 as QtQuick
import QtQuick.Controls 1.4 as QtQuickControls
import QtQuick.Controls.Styles 1.4

import Citron 1.0 as Citron

QtQuickControls.Slider
{
    stepSize: 1;

	style: SliderStyle
	{
		groove: QtQuick.Rectangle 
		{
            implicitWidth: control.width;
            implicitHeight: 4;
            color: Citron.Color.resolve(Citron.Theme.primaryColor);
            radius: 2;
        }

        handle: QtQuick.Rectangle
        {
            anchors.centerIn: parent
            color: Citron.Color.resolve(Citron.Theme.accentColor);
            implicitWidth: 16
            implicitHeight: 16
            radius: 3;
        }

        tickmarks: QtQuick.Item
        {
            height: 3;

            QtQuick.Rectangle
            {
                x: (control.value / 100 * (control.width - styleData.handleWidth)) - 3;
                y: 19;

                implicitWidth: 23;
                height: 23;
                radius: 6;

                color: Citron.Color.resolve(Citron.Theme.primaryColor);
                
                Citron.Label
                {
                    anchors.centerIn: parent;
                    text: control.value;
                    style: 'white';
                }
            }
        }

	}
}
