
#include "\macros\utilityMacros.hpp"

params ["_unit"];

if (isNil _unit) exitWith { DEBUG_RPT("nil _unit passed to sideToFactionID."); };
if (!_unit isKindOf "CAManBase") exitWith { DEBUG_RPT("Object passed to _unit is not type CAManBase"); };

_side = side group _unit;
_factionId = "";

switch (_side) do {
	case west: _factionId = VAR_TO_STR(WEST_ID);
	case east: _factionId = VAR_TO_STR(EAST_ID);
	case independent: _factionId = VAR_TO_STR(INDEPENDENT_ID);
	case civilian: _factionId = VAR_TO_STR(CIVILIAN_ID);
};

_factionId;
