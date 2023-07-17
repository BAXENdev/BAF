
#include "..\..\..\macros\loadoutAccessMacros.hpp"

params ["_crateArray", "_loadoutArray", "_count"];

if !(_crateArray isEqualType []) exitWith { /* TODO: Debug RPT */ };
if !(_loadoutArray isEqualType []) exitWith { /* TODO: Debug RPT */ };

_launcherWeaonArray = GET_LAUNCHER(_loadoutArray);
if !(_launcherWeaponArray isEqualType []) exitWith { /* TODO: Debug RPT */ };
_launcherMagArray = GET_WEAPON_MAG(_launcherWeaponArray);
if !(_launcherMagArray isEqualType []) exitWith { /* TODO: Debug RPT */ };
_magName = GET_MAG_NAME(_launcherMagArray);
if !(_launcherMagArray isEqualType "") exitWith { /* TODO: Debug RPT */ };

// TODO: Check Item Existance
// TODO: Check Item Type

_magCapacity = configFile >> "CfgMagazines" >> _magName >> "count";
_crateArray pushBack [_magName, _magCapacity, _count];
