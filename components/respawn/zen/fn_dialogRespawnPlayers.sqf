
_sides = [];
_groups = [];
_players = allPlayers select { !alive _x };
_players apply {
	_sides pushBackUnique side _x;
	_groups pushBackUnique group _x;
};

_owners = [
	// 0) Content Type
	"OWNERS",

	// 1) Display Name and Tooltip
	"Select Players:", // or  ["Title", "Tooltip"],

	// 2) Control Specific Arguments
	[
		// 0) Selected Sides
		_sides,

		// 1) Selected Groups
		_groups, // or [group1, group2, group3]

		// 2) Selected Players
		_players, // or [player1, player2, player3]

		// 3) Default tab, 0: Side, 1: Group, 2: Players
		2
	],

	// 3) Force Default, default: false
	true
];

[
	// 0) Title
	"Respawn Players",
	
	// 1) Content Array of Zen Dialogs
	[_owners],

	// 2) On Confirm, unscheduled
	// Passed Arguments:
	// 0) Dialog Values in order of Content
	// 1) Arguments, the same ones passed in arg4 for zen_dialog_fnc_create
	{
		params ["_dialogValues","_args"];
		_dialogValues params ["_sides","_groups","_players"];
		_deadPlayers = allPlayers apply {
			(!alive _x) && 
			{
				((side group _x) in _sides) ||
				{ (group _x) in _groups } ||
				{ _x in _players };
			};
		};
		_deadPlayers apply {
			[0] remoteExec ["setPlayerRespawnTime",_x];
		};
	},

	// 3) On Cancel, default: {}, unscheduled
	{}, 

	// 4) Arguments, default: []
	[]

] call zen_dialog_fnc_create;
