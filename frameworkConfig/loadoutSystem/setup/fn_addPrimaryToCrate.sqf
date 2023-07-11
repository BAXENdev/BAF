
#include "\macros\loadoutAccessMacros.hpp"

params ["_crateArray", "_loadoutArray", "_count"];

if (!_crateArray isEqualType []) exitWith { /* TODO: Debug RPT */ };
if (!_loadoutArray isEqualType []) exitWith { /* TODO: Debug RPT */ };

_primaryWeaponArray = GET_PRIMARY(_loadoutArray);
if (!_primaryWeaponArray isEqualType []) exitWith { /* TODO: Debug RPT */ };
_primaryName = GET_WEAPON_NAME(_primaryWeaponArray);
if (!_primaryName isEqualType "") exitWith { /* TODO: Debug RPT */ };

// TODO: Check Item Type
// TODO: Check Item Existance

_crateArray pushBack [_primaryName, _count];
