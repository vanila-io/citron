import QtQuick 2.5 as QtQuick
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import QtGraphicalEffects 1.0

import Citron 1.0 as Citron

QtQuick.Rectangle
{
	id: root;

	property string title: '';
	property string icon: '';
	property string description: '';
	property string backgroundColor: Citron.Theme.primaryColor;

	x: 0;
	y: 0;

	width: parent.width;
	height: 45;

	color: Citron.Color.resolve(backgroundColor);
	border.width: 0;

	QtQuick.Row
	{
		anchors
		{
			left: parent.left;
			leftMargin: 30;
			verticalCenter: parent.verticalCenter;
		}

		spacing: 5;

		Citron.Icon
		{
			name: root.icon;
		}

		Citron.Label
		{
			size: 'm1';
			text: root.title;
			font.bold: true;
		}
	}

	Citron.Label
	{
		anchors
		{
			right: parent.right;
			rightMargin: 25;
			verticalCenter: parent.verticalCenter;
		}

		size: 'm1';
		text: parent.description;
	}

	

}