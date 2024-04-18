
#include "..\_commonMacros.hpp"

_allPlayerSides = [];
allPlayers apply { _allPlayerSides pushBackUnique (side _x) };
_allPlayerGroups = [];
allPlayers apply { _allPlayerGroups pushBackUnique (group _x) };

_ownersTargets = [
	// 0) Content Type
	"OWNERS",

	// 1) Display Name and Tooltip
	"Select Targets", // or  ["Title", "Tooltip"],

	// 2) Control Specific Arguments
	[
		// 0) Selected Sides
		_allPlayerSides,

		// 1) Selected Groups
		_allPlayerGroups, // or [group1, group2, group3]

		// 2) Selected Players
		allPlayers, // or [player1, player2, player3]

		// 3) Default tab, 0: Side, 1: Group, 2: Players
		0
	],

	// 3) Force Default, default: false
	true
];

// Returns: STRING
_editBoxHint = [
	// 0) Content Type
	// Alternative Types: EDIT:MULTI & EDIT:CODE
	// EDIT is single line and EDIT:MULTI (EDIT:CODE) is multiline
	// EDIT:CODE performs code autocompletion
	"EDIT:MULTI",

	// 1) Display Name and Tooltip
	"Hint", // or  ["Title", "Tooltip"],

	// 2) Control Specific Arguments
	[
		// 0) Default Text
		"",

		// 1) Sanitizing Function, Code Function that accepts a string and returns a string
		{ params ["_inputText"]; _inputText; },

		// 2) Box Height in line count, only available for EDIT:MULTI & EDIT:CODE
		5
	],

	// 3) Force Default, default: false
	true
];


// Create Dialog Function
[
	// 0) Title
	"Hint Targets",
	
	// 1) Content Array of Zen Dialogs
	[_ownersTargets,_editBoxHint],

	// 2) On Confirm, unscheduled
	// Passed Arguments:
	// 0) Dialog Values in order of Content
	// 1) Arguments, the same ones passed in arg4 for zen_dialog_fnc_create
	{
		params ["_dialogValues","_args"];
		_dialogValues params ["_targets","_hint"];
		_targets = flatten _targets;

		[_hint,_targets] call bax_common_fnc_aceHint;
	},

	// 3) On Cancel, default: {}, unscheduled
	{}, 

	// 4) Arguments, default: []
	[]

] call zen_dialog_fnc_create;

