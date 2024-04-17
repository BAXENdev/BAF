
#include "..\_mapMarkersMacros.hpp"

params ["_group"];

private ["_texture","_color","_position","_text"];

_side = side _group;

_texture = [_group] call bax_mapMarkers_fnc_getGroupIcon;

_units = units _group;
_firstAliveIndex = _units findIf { alive _x };
if (_firstAliveIndex == -1) then {
	_color = COLOR_LGRAY;
	_position = getPos leader _group;
} else {
	_color = _group getVariable [MARKER_COLOR,nil];
	if (isNil "_color") then {
		_color = switch (_side) do {
			case west: { COLOR_BLUFOR };
			case east: { COLOR_OPFOR };
			case resistance: { COLOR_INDFOR };
			case civilian: { COLOR_CIV };
			default { COLOR_BLUFOR };
		};
	};
	_position = getPos (_units select _firstAliveIndex);
};

_text = groupId _group;

// return
[_texture,_color,_position,_text];
