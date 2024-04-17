
#include "_respawnMacros.hpp"

// [
// 	"ace_spectator_displayLoaded",
// 	BVAR(respawn,spectatorOnLoad)
// ] call CBA_fnc_addEventHandler;

[false] call BIS_fnc_drawRespawnPositions; 

if !(hasInterface) exitWith {};

_respawnLoadout = player getVariable [VAR_RESPAWN,nil];
if (isNil "_respawnLoadout") then {
	_loadout = getUnitLoadout player;
	player setVariable [VAR_RESPAWN,_loadout,true];
};

// TODO: Add wave respawn call action if enabled
