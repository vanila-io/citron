pragma Singleton

import QtQuick 2.0

QtObject
{
	function resolve(name)
	{
		if(!name)
			name = 'm2';
			
		var r = size[name];

		if(r)
			return r;
		else
			return name;
	}

	readonly property var size:
	{
		'h1': 89,
		'h2': 55,
		'h3': 34,
		'm2': 21,
		'm1': 13,
		's1': 8,
		's2': 5
	}
}