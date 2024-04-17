
#include "..\_mapMarkersMacros.hpp"

params ["_map"];

_units = (units group player) - [player]; // because GPS include a unit marker, do not include unit
_markers = _units apply { [_x] call bax_mapMarkers_fnc_getUnitMarker; };
_markerSize = round bax_mapMarkers_unitMarkerSize;

_markers apply {
	_x params ["_texture","_color","_position","_direction"];
	_map drawIcon [
		_texture,
		_color,
		_position,
		_markerSize,
		_markerSize,
		_direction
	]
};
