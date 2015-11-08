import QtQuick 2.5 as QtQuick
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

import Citron 1.0

QtQuick.Image
{
	property string name;

	source: 'ibm-design-icons/svg/' + name + '_32.svg';
}