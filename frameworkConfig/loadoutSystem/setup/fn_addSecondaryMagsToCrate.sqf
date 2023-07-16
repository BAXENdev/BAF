
#include "..\..\..\macros\loadoutAccessMacros.hpp"

params ["_crateArray", "_loadoutArray", "_count"];

if (!_crateArray isEqualType []) exitWith { /* TODO: Debug RPT */ };
if (!_loadoutArray isEqualType []) exitWith { /* TODO: Debug RPT */ };

_secondaryWeaponArray = GET_SECONDARY(_loadoutArray);
if (!_secondaryWeaponArray isEqualType []) exitWith { /* TODO: Debug RPT */ };
_secondaryMagArray = GET_WEAPON_MAG(_secondaryWeaponArray);
if (!_secondaryMagArray isEqualType []) exitWith { /* TODO: Debug RPT */ };
_magName = GET_MAG_NAME(_secondaryMagArray);
if (!_secondaryMagArray isEqualType "") exitWith { /* TODO: Debug RPT */ };

// TODO: Check Item Existance
// TODO: Check Item Type

_magCapacity = configFile >> "CfgMagazines" >> _magName >> "count";
_crateArray pushBack [_magName, _magCapacity, _count];
