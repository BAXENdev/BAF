
#include "_respawnCustomMacros.hpp"

// [
// 	"ace_spectator_displayLoaded",
// 	BVAR(respawn,spectatorOnLoad)
// ] call CBA_fnc_addEventHandler;

// [] spawn {
// 	// Need to call on repeat sometimes..
// 	for "_i" from 1 to 4 do {
// 		[false] call BIS_fnc_drawRespawnPositions;
// 		sleep 1;
// 	}
// };

if !(hasInterface) exitWith {};

_side = side group player;

// Set respawn loadout if it hasnt already been set
_respawnLoadout = player getVariable [VAR_RESPAWN,nil];
if (isNil "_respawnLoadout") then {
	_loadout = getUnitLoadout player;
	_loadout = [_loadout] call acre_api_fnc_filterUnitLoadout;
	player setVariable [VAR_RESPAWN,_loadout,true];
};

bax_respawn_respawnTime = -1;
bax_respawn_respawnEnabled = true;
bax_respawn_respawnPosition = [objNull, "Select Respawn"];
bax_respawn_respawnAutospawn = false;
bax_respawn_respawnStatusError = "Respawn Disabled";
bax_respawn_skipTicketUse = false;

bax_respawn_personalTickets = switch (_side) do {
	case west: { BLUFOR_PTICKETS };
	case east: { OPFOR_PTICKETS };
	case independent: { INDFOR_PTICKETS };
	case civilian: { CIVILIAN_PTICKETS };
};

// TODO: Player lost ACE Spectator UI after trying to open chat.
// Spectator UI seems to start loading when respawning instead, which led to the group markers being shown while alive.
// TODO: Attempt replication with only ace
// Bug Report: https://github.com/acemod/ACE3/issues/new/choose

["ace_spectator_displayLoaded",{
	params ["_display"];

	[_display] call bax_respawn_fnc_respawnLoadUi;

	[] call bax_respawn_fnc_respawnLoop;
}] call CBA_fnc_addEventHandler;
