
#include "..\_respawnMacros.hpp"

_content = [];
_args = [];

{
	_x params ["_side", "_settings"];
	_settings params ["_respawnTickets", "_respawnTicketsPersonal", "_respawnDelay", "_squadRespawn", "_groupsRespawn"];

	_titleBox = [
		"TOOLBOX",
		str _side,
		[
			0,
			0,
			0,
			[],
			2
		],
		true
	];

	_sliderTickets = [
		"SLIDER",
		["Respawn Tickets", "-1 is infinite"],
		[
			-1,
			100,
			_respawnTickets,
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
		_squadRespawn,
		true
	];

	_checkboxGroupSpawns = [
		"CHECKBOX",
		"Allow Spawning On Other Squads",
		_groupsRespawn,
		true
	];

	_content append [
		_titleBox,
		_sliderTickets,
		_sliderTicketsPersonal,
		_sliderRespawnDelay,
		_checkboxSquadSpawns,
		_checkboxGroupSpawns
	];

	_args pushBack [
		_respawnTickets,
		_respawnTicketsPersonal,
		_respawnDelay,
		_squadRespawn,
		_groupsRespawn
	];

} forEach [
	[west, bax_respawn_bluforSettings],
	[east, bax_respawn_opforSettings],
	[independent, bax_respawn_indforSettings],
	[civilian, bax_respawn_civilianSettings],
]

[
	"Update Respawn Settings",
	_content,
	{
		params ["_dialogValues","_args"];

		{
			_side = _x;
			_newSettings

		} forEach [west, east, independent, civilian];
	},
	{},
	_args
] call zen_dialog_fnc_create;
