
#include "..\_respawnVanillaMacros.hpp"

params ["_side"];

private ["_respawnTickets", "_respawnDelay"];
_sideSettings = switch (_side) do {
	case west: {
		_respawnTickets = [west, nil] call BIS_fnc_respawnTickets;
		_respawnDelay = bax_respawnVanilla_bluforRespawnDelay;
	};
	case east: {
		_respawnTickets = [east, nil] call BIS_fnc_respawnTickets;
		_respawnDelay = bax_respawnVanilla_opforRespawnDelay;
	};
	case independent: {
		_respawnTickets = [independent, nil] call BIS_fnc_respawnTickets;
		_respawnDelay = bax_respawnVanilla_indforRespawnDelay;
	};
	case civilian: {
		_respawnTickets = [civilian, nil] call BIS_fnc_respawnTickets;
		_respawnDelay = bax_respawnVanilla_civilianRespawnDelay;
	};
};

_sliderTickets = [
	"SLIDER",
	"Respawn Tickets (Current)",
	[
		0,
		100,
		_respawnTickets,
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

[
	("Update Respawn Settings" + format ["(%1)", _side]),
	[
		_sliderTickets,
		_sliderRespawnDelay
	],
	{
		params ["_dialogValues","_args"];
		_dialogValues params ["_newTickets", "_newRespawnDelay"];
		_args params ["_side"];
		
		[_side, _newTickets] call BIS_fnc_respawnTickets;
		(allPlayers select { side group _x isEqualTo _side }) apply {
			_player = _x;

			[_newRespawnDelay] remoteExec ["setPlayerRespawnTime", _player];
		};
		
		switch (_side) do {
			case west: {
				bax_respawnVanilla_bluforRespawnDelay = _newRespawnDelay;

				publicVariable "bax_respawnVanilla_bluforRespawnDelay";
			};
			case east: {
				bax_respawnVanilla_opforRespawnDelay = _newRespawnDelay;

				publicVariable "bax_respawnVanilla_opforRespawnDelay";
			};
			case independent: {
				bax_respawnVanilla_indforRespawnDelay = _newRespawnDelay;

				publicVariable "bax_respawnVanilla_indforRespawnDelay";
			};
			case civilian: {
				bax_respawnVanilla_civilianRespawnDelay = _newRespawnDelay;

				publicVariable "bax_respawnVanilla_civilianRespawnDelay";
			};
		};
	},
	{},
	[_side]
] call zen_dialog_fnc_create;
