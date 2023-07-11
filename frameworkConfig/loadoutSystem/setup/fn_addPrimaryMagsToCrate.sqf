
#include "\macros\loadoutAccessMacros.hpp"

params ["_crateArray", "_loadoutArray", "_count"];

if (!_crateArray isEqualType []) exitWith { /* TODO: Debug RPT */ };
if (!_loadoutArray isEqualType []) exitWith { /* TODO: Debug RPT */ };

_primaryWeaponArray = GET_PRIMARY(_loadoutArray);
if (!_primaryWeaponArray isEqualType []) exitWith { /* TODO: Debug RPT */ };
_primaryMagArray = GET_WEAPON_MAG(_primaryWeaponArray);
if (!_primaryMagArray isEqualType []) exitWith { /* TODO: Debug RPT */ };
_magName = GET_MAG_NAME(_primaryMagArray);
if (!_primaryMagArray isEqualType "") exitWith { /* TODO: Debug RPT */ };

// TODO: Check Item Existance
// TODO: Check Item Type

_magCapacity = configFile >> "CfgMagazines" >> _magName >> "count";
_crateArray pushBack [_magName, _magCapacity, _count];
