
#include "macros\utilityMacros.hpp"

params ["_newUnit", "_oldUnit", "_respawn", "_respawnDelay"];

// Loadout Respawn Cfg

// Case 0: Respawn with empty loadout
_respawnSetting = getNumber(missionconfigfile >> "BAX_CFG" >> #CFG_LOADOUT_RESPAWN);
if (_respawnSetting == 0) exitWith {
	_newUnit setUnitLoadout EMPTY_LOADOUT;
};
// Case 1: Respawn with framework loadout
if (_respawnSetting == 1) exitWith {
	_loadoutArray = _newUnit getVariable [VARS_RESPAWN_LOADOUT, EMPTY_LOADOUT];
	_newUnit setUnitLoadout _loadoutArray;
};

// Case 2: respawn with whatever is left of old loadout
if (_respawnSetting == 2) exitWith {
	if (isNull _oldUnit) exitWith {
		_loadoutArray = _newUnit getVariable [VARS_RESPAWN_LOADOUT, EMPTY_LOADOUT];
		_newUnit setUnitLoadout _loadoutArray;
	};
	_loadoutArray = getUnitLoadout _oldUnit;
	_newUnit setUnitLoadout _loadoutArray;
};

[] call BAX_RADIOS_fnc_onPlayerRespawnRadios;
