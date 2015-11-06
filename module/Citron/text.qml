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
		'h1': 68,
		'h2': 42,
		'h3': 26,
		'm1': 16,
		'm2': 13,
		's1': 10,
		's2': 6
	}
}