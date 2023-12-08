
#include "..\..\macros\mapMarkerMacros.hpp"

params ["_group"];

private ["_texture","_color","_position","_text"];

_texture = [_group] call BAX_MAPMARKERS_fnc_getGroupIcon;

_color = GETVAR(_group,VARS_MARKER_COLOR,nil);
if (isNil "_color") then {
	_color = switch (side _group) do {
		case west: { COLOR_BLUFOR; };
		case east: { COLOR_OPFOR; };
		case resistance: { COLOR_INDFOR; };
		default { COLOR_LGRAY; };
	};
};

_units = units _group;
_indexFirstAlive = _units findIf { alive _x };
if (_indexFirstAlive == -1) then {
	_color = [0,0,0,0]; // Transparent
	_position = [0,0,0]; // position doesnt matter
} else {
	_position = getPos (_units select _indexfirstAlive);
};

_text = groupId _group;

// Return
[_texture,_color,_position,_text];
