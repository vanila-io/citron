import QtQuick 2.5 as QtQuick
import QtQuick.Controls 1.4 as QtQuickControls
import QtQuick.Controls.Styles 1.4

import Citron 1.0 as Citron

QtQuickControls.ProgressBar
{
	style: ProgressBarStyle
	{
		background: QtQuick.Rectangle
		{
			color: Citron.Color.resolve(Citron.Theme.backgroundColor);
			
			border.width: 1;
			border.color: Citron.Color.resolve(Citron.Theme.accentColor);

			implicitWidth: control.width ? control.width : 200;
			implicitHeight: control.height ? control.height : 4;

			radius: 3;
		}

		progress: QtQuick.Rectangle
		{
			color: control.indeterminate ?
                Citron.Color.resolve(Citron.Theme.backgroundColor)
				: Citron.Color.resolve(Citron.Theme.primaryColor);

			border.width: control.indeterminate ? 1 : 0;
			border.color: Citron.Color.resolve(Citron.Theme.accentColor);

			radius: 3;

			QtQuick.Item
			{
				visible: control.indeterminate;
				anchors.fill: parent;

				QtQuick.Rectangle
				{
					width: control.width / 10;
					height: control.height;
					border.width: 0;
					radius: 3;
					color: Citron.Color.resolve(Citron.Theme.primaryColor);

					QtQuick.XAnimator on x
					{
						from: 0; to: control.width - (control.width / 10);
						loops: QtQuick.Animation.Infinite;
						duration: 1750;
						running: control.indeterminate;
					}
				}
			}
				
		}
	}
}
