
#include "_respawnVanillaMacros.hpp"

if (isServer) then {
	[west, bax_respawnVanilla_bluforRespawnTickets] call BIS_fnc_respawnTickets;
	[east, bax_respawnVanilla_opforRespawnTickets] call BIS_fnc_respawnTickets;
	[independent, bax_respawnVanilla_indforRespawnTickets] call BIS_fnc_respawnTickets;
	[civilian, bax_respawnVanilla_civilianRespawnTickets] call BIS_fnc_respawnTickets;
};

if !(hasInterface) exitWith {};

_side = side group player;

// Set respawn loadout if it hasnt already been set
_respawnLoadout = player getVariable [VAR_RESPAWN,nil];
if (isNil "_respawnLoadout") then {
	_loadout = getUnitLoadout player;
	_loadout = [_loadout] call acre_api_fnc_filterUnitLoadout;
	player setVariable [VAR_RESPAWN,_loadout,true];
};
