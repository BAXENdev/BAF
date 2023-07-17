
#include "..\..\..\macros\loadoutAccessMacros.hpp"

params ["_crateArray", "_loadoutArray", "_count"];

if !(_crateArray isEqualType []) exitWith { /* TODO: Debug RPT */ };
if !(_loadoutArray isEqualType []) exitWith { /* TODO: Debug RPT */ };

_secondaryWeaponArray = GET_SECONDARY(_loadoutArray);
if !(_secondaryWeaponArray isEqualType []) exitWith { /* TODO: Debug RPT */ };
_secondaryName = GET_WEAPON_NAME(_loadoutWeaponArray);
if !(_secondaryName isEqualType "") exitWith { /* Debug RPT */ };

// TODO: Check Item Type
// TODO: Check Item Existance

_crateArray pushBack [_secondaryName, _count];
