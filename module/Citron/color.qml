pragma Singleton

import QtQuick 2.0

QtObject
{

	/* This function return right color name.
	 * HowTo: resolveColor('blue-10'); will return '#C0E6FF'.
	 */
	function resolveColor(colorName)
	{
		var first;
		var last;

		first = colorName.slice(0, colorName.lastIndexOf('-'));
		last = colorName.slice(colorName.lastIndexOf('-') + 1, colorName.length);

		return colors[first][last];
	}


	property var colors:
	{
		'blue':
		{
			'10': '#C0E6FF',
			'20': '#7CC7FF',
			'30': '#5AAAFA',
			'40': '#5596E6',
			'50': '#4178BE',
			'60': '#325C80',
			'70': '#264A60',
			'80': '#1D3649',
			'90': '#152935',
			'100': '#010205'
		}
	}
}