
#include "_respawnMacros.hpp"

bax_respawn_position = objNull;
bax_respawn_bluforSettings = [
	missionConfigFile >> "CfgBax" >> "blufor_respawnTickets",
	missionConfigFile >> "CfgBax" >> "blufor_respawnTicketsPersonal",
	missionConfigFile >> "CfgBax" >> "blufor_respawnDelay",
	missionConfigFile >> "CfgBax" >> "blufor_respawnOnSquad",
	missionConfigFile >> "CfgBax" >> "blufor_doWaveRespawn",
	missionConfigFile >> "CfgBax" >> "blufor_waveRespawnDuration",
	missionConfigFile >> "CfgBax" >> "blufor_allowWaveCall",
];
bax_respawn_opforSettings = [
	missionConfigFile >> "CfgBax" >> "opfor_respawnTickets",
	missionConfigFile >> "CfgBax" >> "opfor_respawnTicketsPersonal",
	missionConfigFile >> "CfgBax" >> "opfor_respawnDelay",
	missionConfigFile >> "CfgBax" >> "opfor_respawnOnSquad",
	missionConfigFile >> "CfgBax" >> "opfor_doWaveRespawn",
	missionConfigFile >> "CfgBax" >> "opfor_waveRespawnDuration",
	missionConfigFile >> "CfgBax" >> "opfor_allowWaveCall",
];
bax_respawn_indforSettings = [
	missionConfigFile >> "CfgBax" >> "indfor_respawnTickets",
	missionConfigFile >> "CfgBax" >> "indfor_respawnTicketsPersonal",
	missionConfigFile >> "CfgBax" >> "indfor_respawnDelay",
	missionConfigFile >> "CfgBax" >> "indfor_respawnOnSquad",
	missionConfigFile >> "CfgBax" >> "indfor_doWaveRespawn",
	missionConfigFile >> "CfgBax" >> "indfor_waveRespawnDuration",
	missionConfigFile >> "CfgBax" >> "indfor_allowWaveCall",
];
bax_respawn_civilianSettings = [
	missionConfigFile >> "CfgBax" >> "civilian_respawnTickets",
	missionConfigFile >> "CfgBax" >> "civilian_respawnTicketsPersonal",
	missionConfigFile >> "CfgBax" >> "civilian_respawnDelay",
	missionConfigFile >> "CfgBax" >> "civilian_respawnOnSquad",
	missionConfigFile >> "CfgBax" >> "civilian_doWaveRespawn",
	missionConfigFile >> "CfgBax" >> "civilian_waveRespawnDuration",
	missionConfigFile >> "CfgBax" >> "civilian_allowWaveCall",
];

["ace_spectator_displayLoaded",{
	// TODO: Add respawn UI
}] call CBA_fnc_addEventHandler

// TODO: Override ace spectator keybinds to add new ones

// TODO: Disable respawn markers on map through command
// - may need moved to postinit
