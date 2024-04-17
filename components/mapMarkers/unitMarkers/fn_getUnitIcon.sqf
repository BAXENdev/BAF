
#include "..\_mapMarkersMacros.hpp"

// TODO: Cache icon
// Use https://github.com/CBATeam/CBA_A3/blob/master/addons/xeh/CfgEventHandlers.hpp#L103
// Or have it calculate on start and on arsenal close?

params ["_unit"];

if !(alive _unit) exitWith {
	// return
	B_ICON_MAN_DEAD;
};

if (_unit getVariable ["ACE_isUnconscious", false]) exitWith {
	// return
	B_ICON_MAN_REVIVE;
};

_icon = _unit getVariable [MARKER_TEXTURE,nil];
if !(isNil "_icon") exitWith {
	// return
	_icon;
};

if ((leader _unit) isEqualTo _unit) exitWith {
	// return
	ICON_MAN_LEAD;
};

if ((_unit getVariable ["ace_medical_medicclass",0]) > 0) exitWith {
	// return
	ICON_MAN_MED;
};

if ((_unit getVariable ["ACE_isEngineer",0]) > 0) exitWith {
	// return
	ICON_MAN_ENG;
};

_loadout = getUnitLoadout _unit;

_primaryWeaponClass = _loadout select 0 select 0; // might be nil if no primary
if !(isNil "_primaryWeaponClass") then {
	if (([_primaryWeaponClass] call BIS_fnc_itemType) isEqualTo ["Weapon","MachineGun"]) exitWith {
		// return
		ICON_MAN_MG;
	};
};

_launcherWeaponClass = _loadout select 0 select 0; // might be nil if no primary
if !(isNil "_launcherWeaponClass") then {
	if (([_launcherWeaponClass] call BIS_fnc_itemType) in [["Weapon","MissileLauncher"],["Weapon","RocketLauncher"]]) exitWith {
		// return
		ICON_MAN_AT;
	};
};

// Default return
ICON_MAN;
