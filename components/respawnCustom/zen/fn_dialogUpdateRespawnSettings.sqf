
#include "..\_respawnMacros.hpp"

params ["_side"];

_sideSettings = switch (_side) do {
	case west: { bax_respawn_bluforSettings };
	case east: { bax_respawn_opforSettings };
	case independent: { bax_respawn_indforSettings };
	case civilian: { bax_respawn_civilianSettings };
};
_sideSettings params ["_respawnTickets", "_respawnTicketsPersonal", "_respawnDelay", "_doSquadRespawn", "_doGroupRespawn"];

_sideTickets = switch (_side) do {
	case west: { bax_respawn_bluforTickets };
	case east: { bax_respawn_opforTickets };
	case independent: { bax_respawn_indforTickets };
	case civilian: { bax_respawn_civilianTickets };
};
_sliderTickets = [
	"SLIDER",
	["Respawn Tickets (Current)", "-1 is infinite"],
	[
		-1,
		100,
		_sideTickets,
		0
	],
	true
];

_sliderTicketsPersonal = [
	"SLIDER",
	["Personal Respawn Tickets", "-1 is infinite"],
	[
		-1,
		100,
		_respawnTicketsPersonal,
		0
	],
	true
];

_checkboxResetTickets = [
	"CHECKBOX",
	"Reset Personal Tickets?",
	false,
	true
];

_sliderRespawnDelay = [
	"SLIDER",
	["Respawn Delay", "Respawn Delay in Seconds"],
	[
		0,
		3599,
		_respawnDelay,
		{ [_this, "M:SS"] call CBA_fnc_formatElapsedTime }
	],
	true
];

_checkboxSquadSpawns = [
	"CHECKBOX",
	"Allow Spawning On Squad Members",
	_doSquadRespawn,
	true
];

_checkboxGroupSpawns = [
	"CHECKBOX",
	"Allow Spawning On Other Squads",
	_doGroupRespawn,
	true
];

[
	"Update Respawn Settings",
	[
		_sliderTickets,
		_sliderTicketsPersonal,
		_checkboxResetTickets,
		_sliderRespawnDelay,
		_checkboxSquadSpawns,
		_checkboxGroupSpawns
	],
	{
		params ["_dialogValues","_args"];
		_dialogValues params ["_newTickets", "_newTicketsPersonal", "_resetPersonalTickets", "_newRespawnDelay", "_newSquadSpawns", "_newGroupSpawns"];
		_args params ["_side"];
		
		_newSettings = [
			_newTickets,
			_newTicketsPersonal,
			_newRespawnDelay,
			_newSquadSpawns,
			_newGroupSpawns
		];

		// Set the new settings for JIPs
		_settingsVar = switch (_side) do {
			case west: { "bax_respawn_bluforSettings"; };
			case east: { "bax_respawn_opforSettings"; };
			case independent: { "bax_respawn_indforSettings"; };
			case civilian: { "bax_respawn_civilianSettings"; };
		};
		missionNamespace setVariable [_settingsVar, _newSettings, true];

		// Update tickets
		_ticketsVar = switch (_side) do {
			case west: { "bax_respawn_bluforTickets"; };
			case east: { "bax_respawn_opforTickets"; };
			case independent: { "bax_respawn_indforTickets"; };
			case civilian: { "bax_respawn_civilianTickets"; };
		};
		missionNamespace setVariable [_ticketsVar, _newTickets, true];

		// Update Personal Tickets
		_sidePlayers = allPlayers select { side group _x isEqualTo _side };
		{
			_player = _x;
			
			[[_newTicketsPersonal], { params ["_newTicketsPersonal"]; bax_respawn_personalTickets = _newTicketsPersonal; }] remoteExec ["spawn", _player];
		} forEach _sidePlayers;
	},
	{},
	[_side]
] call zen_dialog_fnc_create;
