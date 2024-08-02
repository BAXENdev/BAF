
#include "_respawnMacros.hpp"

[false] call BIS_fnc_drawRespawnPositions;
[] spawn {
	// Need to call on repeat sometimes..
	for "_i" from 1 to 4 do {
		[false] call BIS_fnc_drawRespawnPositions;
		sleep 1;
	}
};

bax_respawn_bluforSettings = [
	getNumber (missionConfigFile >> "CfgBax" >> "blufor_respawnTickets"),
	getNumber (missionConfigFile >> "CfgBax" >> "blufor_respawnTicketsPersonal"),
	getNumber (missionConfigFile >> "CfgBax" >> "blufor_respawnDelay"),
	getNumber (missionConfigFile >> "CfgBax" >> "blufor_respawnOnSquad"),
	getNumber (missionConfigFile >> "CfgBax" >> "blufor_respawnOnGroups"),
	getNumber (missionConfigFile >> "CfgBax" >> "blufor_doWaveRespawn"),
	getNumber (missionConfigFile >> "CfgBax" >> "blufor_waveRespawnDuration"),
	getNumber (missionConfigFile >> "CfgBax" >> "blufor_allowWaveCall")
];
bax_respawn_opforSettings = [
	getNumber (missionConfigFile >> "CfgBax" >> "opfor_respawnTickets"),
	getNumber (missionConfigFile >> "CfgBax" >> "opfor_respawnTicketsPersonal"),
	getNumber (missionConfigFile >> "CfgBax" >> "opfor_respawnDelay"),
	getNumber (missionConfigFile >> "CfgBax" >> "opfor_respawnOnSquad"),
	getNumber (missionConfigFile >> "CfgBax" >> "opfor_respawnOnGroups"),
	getNumber (missionConfigFile >> "CfgBax" >> "opfor_doWaveRespawn"),
	getNumber (missionConfigFile >> "CfgBax" >> "opfor_waveRespawnDuration"),
	getNumber (missionConfigFile >> "CfgBax" >> "opfor_allowWaveCall")
];
bax_respawn_indforSettings = [
	getNumber (missionConfigFile >> "CfgBax" >> "indfor_respawnTickets"),
	getNumber (missionConfigFile >> "CfgBax" >> "indfor_respawnTicketsPersonal"),
	getNumber (missionConfigFile >> "CfgBax" >> "indfor_respawnDelay"),
	getNumber (missionConfigFile >> "CfgBax" >> "indfor_respawnOnSquad"),
	getNumber (missionConfigFile >> "CfgBax" >> "indfor_respawnOnGroups"),
	getNumber (missionConfigFile >> "CfgBax" >> "indfor_doWaveRespawn"),
	getNumber (missionConfigFile >> "CfgBax" >> "indfor_waveRespawnDuration"),
	getNumber (missionConfigFile >> "CfgBax" >> "indfor_allowWaveCall")
];
bax_respawn_civilianSettings = [
	getNumber (missionConfigFile >> "CfgBax" >> "civilian_respawnTickets"),
	getNumber (missionConfigFile >> "CfgBax" >> "civilian_respawnTicketsPersonal"),
	getNumber (missionConfigFile >> "CfgBax" >> "civilian_respawnDelay"),
	getNumber (missionConfigFile >> "CfgBax" >> "civilian_respawnOnSquad"),
	getNumber (missionConfigFile >> "CfgBax" >> "civilian_respawnOnGroups"),
	getNumber (missionConfigFile >> "CfgBax" >> "civilian_doWaveRespawn"),
	getNumber (missionConfigFile >> "CfgBax" >> "civilian_waveRespawnDuration"),
	getNumber (missionConfigFile >> "CfgBax" >> "civilian_allowWaveCall")
];

// TODO: Override ace spectator keybinds to add new ones
