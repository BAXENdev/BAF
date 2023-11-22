
#include "..\..\macros\iconMacros.hpp"

params ["_group"];

private ["_icon", "_color", "_position", "_name"];

_unit = leader _group;

_icon = [_group] call BAX_MAPMARKERS_fnc_getGroupIcon;

switch (str side _group) do {
	case WEST_S: { _color = COLOR_BLUFOR; };
	case EAST_S: { _color = COLOR_OPFOR; };
	case GUER_S: { _color = COLOR_INDFOR; };
	case CIV_S: { _color = COLOR_BLUFOR; };
	default { _color = COLOR_UNKNOWN; };
};

_position = getPos _unit;

_name = groupId _group;

[_icon, _color, _position, _name];
