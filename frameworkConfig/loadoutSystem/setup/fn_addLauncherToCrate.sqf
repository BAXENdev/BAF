
#include "..\..\..\macros\loadoutAccessMacros.hpp"

params ["_crateArray", "_loadoutArray", "_count"];

if (!_crateArray isEqualType []) exitWith { /* TODO: Debug RPT */ };
if (!_loadoutArray isEqualType []) exitWith { /* TODO: Debug RPT */ };

_launcherArray = GET_LAUNCHER(_loadoutArray);
if (!_launcherArray isEqualType []) exitWith { /* TODO: Debug RPT */ };
_launcherName = GET_WEAPON_NAME(_launcherArray);
if (!_launcherName isEqualType "") exitWith { /* TODO: Debug RPT */ }; 

// TODO: Check Item Type
// TODO: Check Item Existance

_crateArray pushBack [_launcherName, _count];
