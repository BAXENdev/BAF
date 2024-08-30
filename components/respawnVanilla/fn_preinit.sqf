
#include "_respawnVanillaMacros.hpp"

[false] call BIS_fnc_drawRespawnPositions;
[] spawn {
	// Need to call on repeat sometimes..
	for "_i" from 1 to 4 do {
		[false] call BIS_fnc_drawRespawnPositions;
		sleep 1;
	}
};

bax_respawnVanilla_bluforRespawnTickets = CFGBAX_NUM("blufor_respawnTickets");
bax_respawnVanilla_bluforRespawnDelay = CFGBAX_NUM("blufor_respawnDelay");

bax_respawnVanilla_opforRespawnTickets = CFGBAX_NUM("opfor_respawnTickets");
bax_respawnVanilla_opforRespawnDelay = CFGBAX_NUM("opfor_respawnDelay");

bax_respawnVanilla_indforRespawnTickets = CFGBAX_NUM("indfor_respawnTickets");
bax_respawnVanilla_indforRespawnDelay = CFGBAX_NUM("indfor_respawnDelay");

bax_respawnVanilla_civilianRespawnTickets = CFGBAX_NUM("civilian_respawnTickets");
bax_respawnVanilla_civilianRespawnDelay = CFGBAX_NUM("civilian_respawnDelay");
