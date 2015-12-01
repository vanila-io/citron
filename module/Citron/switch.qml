import QtQuick 2.5 as QtQuick
import QtQuick.Controls 1.4 as QtQuickControls
import QtQuick.Controls.Styles 1.4

import Citron 1.0 as Citron

QtQuickControls.Switch
{
	width: 50;
	height: 15;

	style: SwitchStyle
	{
		groove: QtQuick.Rectangle
		{
			width: control.width;
			height: control.height;

			color: control.checked ?
				Citron.Color.resolve(Citron.Theme.accentColor)
				: Citron.Color.resolve(Citron.Theme.backgroundColor);
			border.width: 1;
			border.color: Citron.Color.resolve(Citron.Theme.accentColor);
		}

		handle: QtQuick.Rectangle
		{
			width: control.width / 2;
			height: control.height;

			color: Citron.Color.resolve(Citron.Theme.primaryColor);
			border.width: 0;
		}
	}
}