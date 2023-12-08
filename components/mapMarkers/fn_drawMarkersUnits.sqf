
params ["_map"];

_units = units group player;
_markers = _units apply { [_x] call BAX_MAPMARKERS_fnc_getUnitMarker; };

_markers apply {
	_x params ["_texture","_color","_position","_direction"];
	_map drawIcon [
		_texture,
		_color,
		_position,
		24,
		24,
		_direction
	]
};
