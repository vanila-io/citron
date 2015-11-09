import QtQuick 2.5 as QtQuick
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

import Citron 1.0 as Citron

Citron.Label
{
	QtQuick.FontLoader { id: fontAwesome; source: Qt.resolvedUrl("fonts/FontAwesome.otf") }

	property string name;
	font.family: fontAwesome.name;
	style: 'white';

	onNameChanged:
	{
		for(var e in AwesomeIconList.list)
		{
			if(!AwesomeIconList.list.hasOwnProperty(e))
			{
				continue;
			}

			if(e === name)
			{
				text = AwesomeIconList.list[e];
			}			
		}
	}
}