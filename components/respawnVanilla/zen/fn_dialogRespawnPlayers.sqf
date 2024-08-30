
_deadPlayers = allPlayers select { !alive _x };

if (_deadPlayers isEqualTo []) exitWith {
	["No players are dead"] call bax_common_fnc_hintDialog;
};

_content = _deadPlayers apply {
	[
		"CHECKBOX",
		name _x,
		false,
		true
	]
};

_content pushBack [
	"CHECKBOX",
	"Do Not Use Tickets:",
	false,
	true
];

[
	// 0) Title
	"Respawn Players",
	
	// 1) Content Array of Zen Dialogs
	_content,

	// 2) On Confirm, unscheduled
	// Passed Arguments:
	// 0) Dialog Values in order of Content
	// 1) Arguments, the same ones passed in arg4 for zen_dialog_fnc_create
	{
		params ["_dialogValues","_args"];
		_args params ["_deadPlayers"];

		_doNotUseTickets = _dialogValues select (count _dialogValues - 1);

		{
			_deadPlayer = _x;
			_doRespawn = _dialogValues select _forEachIndex;
			if (_doRespawn) then {
				[0] remoteExec ["setPlayerRespawnTime", _deadPlayer];
			};
		} forEach _deadPlayers;
	},

	// 3) On Cancel, default: {}, unscheduled
	{}, 

	// 4) Arguments, default: []
	[_deadPlayers]

] call zen_dialog_fnc_create;
