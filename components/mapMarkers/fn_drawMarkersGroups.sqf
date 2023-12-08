
params ["_map"];

_side = side group player;
_groups = (allGroups select { (side _x) isEqualTo _side; }) - [group player];

_markers = _groups apply { [_x] call BAX_MAPMARKERS_fnc_getGroupMarker; };

_markers apply {
	_x params ["_texture","_color","_position","_text"];
	_map drawIcon [
		_texture,
		_color,
		_position,
		32,
		32,
		0,
		_text
	]
};
