
#include "_respawnCustomMacros.hpp"

[false] call BIS_fnc_drawRespawnPositions;
[] spawn {
	// Need to call on repeat sometimes..
	for "_i" from 1 to 4 do {
		[false] call BIS_fnc_drawRespawnPositions;
		sleep 1;
	}
};

// TODO: Add specator camera settings (1st, 3rd, free)

bax_respawn_bluforSettings = [
	CFGBAX_NUM("blufor_respawnTickets"),
	CFGBAX_NUM("blufor_respawnTicketsPersonal"),
	CFGBAX_NUM("blufor_respawnDelay"),
	CFGBAX_BOOL("blufor_respawnOnSquad"),
	CFGBAX_BOOL("blufor_respawnOnGroups")
	// CFGBAX_NUM("blufor_doWaveRespawn"),
	// CFGBAX_NUM("blufor_waveRespawnDuration"),
	// CFGBAX_NUM("blufor_allowWaveCall")
];
bax_respawn_opforSettings = [
	CFGBAX_NUM("opfor_respawnTickets"),
	CFGBAX_NUM("opfor_respawnTicketsPersonal"),
	CFGBAX_NUM("opfor_respawnDelay"),
	CFGBAX_NUM("opfor_respawnOnSquad"),
	CFGBAX_BOOL("opfor_respawnOnGroups")
	// CFGBAX_BOOL("opfor_doWaveRespawn"),
	// CFGBAX_NUM("opfor_waveRespawnDuration"),
	// CFGBAX_NUM("opfor_allowWaveCall")
];
bax_respawn_indforSettings = [
	CFGBAX_NUM("indfor_respawnTickets"),
	CFGBAX_NUM("indfor_respawnTicketsPersonal"),
	CFGBAX_NUM("indfor_respawnDelay"),
	CFGBAX_BOOL("indfor_respawnOnSquad"),
	CFGBAX_BOOL("indfor_respawnOnGroups")
	// CFGBAX_NUM("indfor_doWaveRespawn"),
	// CFGBAX_NUM("indfor_waveRespawnDuration"),
	// CFGBAX_NUM("indfor_allowWaveCall")
];
bax_respawn_civilianSettings = [
	CFGBAX_NUM("civilian_respawnTickets"),
	CFGBAX_NUM("civilian_respawnTicketsPersonal"),
	CFGBAX_NUM("civilian_respawnDelay"),
	CFGBAX_BOOL("civilian_respawnOnSquad"),
	CFGBAX_BOOL("civilian_respawnOnGroups")
	// CFGBAX_NUM("civilian_doWaveRespawn"),
	// CFGBAX_NUM("civilian_waveRespawnDuration"),
	// CFGBAX_NUM("civilian_allowWaveCall")
];

bax_respawn_bluforTickets = BLUFOR_TICKETS;
bax_respawn_opforTickets = OPFOR_TICKETS;
bax_respawn_indforTickets = INDFOR_TICKETS;
bax_respawn_civilianTickets = CIVILIAN_TICKETS;
