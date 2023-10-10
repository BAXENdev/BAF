
#include "..\..\macros\iconMacros.hpp"

params ["_unit"];

if ((leader group _unit) isEqualTo _unit) exitWith {
	ICON_LEADER;
};

if (GETVAR(_unit,"ace_medical_medicclass",0) > 0) exitWith {
	ICON_MEDIC;
};

if (GETVAR(_unit,"ACE_isEngineer",0) > 0) exitWith {
	ICON_ENGINEER;
};

// EOD
// if (GETVAR(_unit,"ACE_isEngineer",0) > 0) exitWith {
// 	ICON_ENGINEER;
// };

_launcher = (getUnitLoadout _unit)#1;
if (!(_launcher isEqualTo []) && { "Launcher" in (([_launcher#0] call BIS_fnc_itemType)#1) }) exitWith { // If launcher is not an empty array and if "Launcher" is in item type name
	ICON_AT;
};

_primary = (getUnitLoadout _unit)#0;
if (!(_primary isEqualTo []) && { "MachineGun" isEqualTo (([_primary#0] call BIS_fnc_itemType)#1) }) exitWith {
	ICON_MG;
};

ICON_MAN;
