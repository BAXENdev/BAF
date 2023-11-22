
#include "..\..\macros\iconMacros.hpp"

params ["_unit"];

// TODO: Get diwaki's DUI radar icon if exist

private ["_icon","_color","_position","_direction","_name"];

_icon = [_unit] call BAX_MAPMARKERS_fnc_getUnitIcon;

switch (assignedTeam _unit) do {
	case "RED": { _color = COLOR_RED; };
	case "GREEN": { _color = COLOR_GREEN; };
	case "BLUE": { _color = COLOR_BLUE; };
	case "YELLOW": { _color = COLOR_YELLOW; };
	default { _color = COLOR_WHITE; };
};
// if (_unit getVariable ["ACE_isUnconscious", false]) then {
// 	_color = COLOR_ORANGE;
// 	// _name = name _unit;
// } else {
// 	// _name = "";
// };
_name = "";

_position = getPos _unit;

if ((alive _unit) and !(_unit getVariable ["ACE_isUnconscious", false])) then {
	_direction = getDirVisual _unit;
} else {
	_direction = 0;
};

[_icon,_color,_position,_direction,_name];
