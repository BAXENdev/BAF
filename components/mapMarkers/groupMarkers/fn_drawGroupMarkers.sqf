
#include "..\_mapMarkersMacros.hpp"

params ["_map"];

_side = side group player;
_sideGroups = allGroups select { side _x isEqualTo _side };
_fullGroups = _sideGroups select { count units _x > 0 };
_groups = _fullGroups - [group player];
_groups = _groups select { !(_x getVariable [MARKER_HIDDEN,false]); };
_markerSize = round bax_mapMarkers_groupMarkerSize;

_markers = _groups apply { [_x] call bax_mapMarkers_fnc_getGroupMarker; };
_markers apply {
	_x params ["_texture","_color","_position","_text"];
	_map drawIcon [
		_texture,
		_color,
		_position,
		_markerSize,
		_markerSize,
		0,
		_text
	]
};