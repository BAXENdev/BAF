
#include "..\_mapMarkersMacros.hpp"

params ["_map"];

_units = (units group player);
_isHidden = (group player) getVariable [MARKER_HIDDEN, false];
if !(_isHidden) then {
	_units = _units - [leader player];
};
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
