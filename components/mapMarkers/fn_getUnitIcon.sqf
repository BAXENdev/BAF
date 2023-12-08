
#include "..\..\macros\mapMarkerMacros.hpp"

params ["_unit"];

if !(alive _unit) exitWith {
	ICON_MAN_DEAD;
};

if (_unit getVariable ["ACE_isUnconscious", false]) exitWith {
	ICON_MAN_UNCON;
};

_icon = GETVAR(_unit,VARS_MARKER_TEXTURE,nil);
if !(isNil "_icon") exitWith {
	_icon;
};

if ((leader _unit) isEqualTo _unit) exitWith {
	ICON_MAN_LEAD;
};

if ((_unit getVariable ["ace_medical_medicclass",0]) > 0) exitWith {
	ICON_MAN_MED;
};

if ((_unit getVariable ["ACE_isEngineer",0]) > 0) exitWith {
	ICON_MAN_ENG;
};

// TODO: Explosive trait

_loadout = getUnitLoadout _unit;

_primaryWeaponClass = _loadout select 0 select 0; // might be nil if no primary
if !(isNil "_primaryWeaponClass") then {
	if (([_primaryWeaponClass] call BIS_fnc_itemType) isEqualTo ["Weapon","MachineGun"]) exitWith {
		ICON_MAN_MG;
	};
};

_launcherWeaponClass = _loadout select 0 select 0; // might be nil if no primary
if !(isNil "_launcherWeaponClass") then {
	if (([_launcherWeaponClass] call BIS_fnc_itemType) in [["Weapon","MissileLauncher"],["Weapon","RocketLauncher"]]) exitWith {
		ICON_MAN_AT;
	};
};

// Default return
ICON_MAN;
