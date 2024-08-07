
#include "..\_mapMarkersMacros.hpp"

params ["_unit"];

private ["_texture","_color","_position","_direction"];

_texture = _unit getVariable [MARKER_TEXTURE, ICON_MAN];

_color = switch (assignedTeam _unit) do {
	case "RED": { COLOR_RED; };
	case "GREEN": { COLOR_GREEN; };
	case "BLUE": { COLOR_BLUE; };
	case "YELLOW": { COLOR_YELLOW; };
	default { COLOR_WHITE; };
};

_position = getPos _unit;

_direction = if (!(alive _unit) or _unit getVariable ["ACE_isUnconscious", false]) then {
	0;
	if (alive _unit) then {
		_texture = B_ICON_MAN_REVIVE;
	} else {
		_texture = B_ICON_MAN_DEAD;
	};
} else {
	getDir _unit;
};

// Return
[_texture,_color,_position,_direction];
