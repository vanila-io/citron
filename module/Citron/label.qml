import QtQuick 2.5 as QtQuick
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

import Citron 1.0

QtQuick.Text
{
	property string style;
	property string size;

	color: Color.resolve(style);
	font.pixelSize: Size.resolve(size);
	font.family: 'Helvetica Neue';
}