
#include "_respawnMacros.hpp"

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

_respawnLoadout = player getVariable [VAR_RESPAWN,nil];
if (isNil "_respawnLoadout") then {
	_loadout = getUnitLoadout player;
	player setVariable [VAR_RESPAWN,_loadout,true];
};

bax_respawn_respawnTime = -1;
bax_respawn_respawnEnabled = true;
bax_respawn_respawnPosition = [objNull, "Select Respawn"];
bax_respawn_respawnAutospawn = false;
bax_respawn_respawnStatusError = "Respawn Disabled";

bax_respawn_bluforTickets = BLUFOR_TICKETS;
bax_respawn_opforTickets = OPFOR_TICKETS;
bax_respawn_indforTickets = INDFOR_TICKETS;
bax_respawn_civilianTickets = CIVILIAN_TICKETS;
_side = side group player;
bax_respawn_personalTickets = switch (_side) do {
	case west: { BLUFOR_PTICKETS };
	case east: { OPFOR_PTICKETS };
	case independent: { INDFOR_PTICKETS };
	case civilian: { CIVILIAN_PTICKETS };
};

// [player] remoteExec ["bax_respawn_fnc_respawnRequestSync", 2];

["ace_spectator_displayLoaded",{
	params ["_display"];

	[_display] call bax_respawn_fnc_respawnLoadUi;

	[] call bax_respawn_fnc_respawnLoop;
}] call CBA_fnc_addEventHandler;
