
#include "..\..\..\macros\utilityMacros.hpp"

private ["_respawnNames","_respawnPositions","_defaultIndex"];
_respawnNames = VAR_RESPAWN_POSITIONS apply {
	_x#0;
	// TODO: Append object type to name?
};
// _respawnPositions = VAR_RESPAWN_POSITIONS apply { _x#1; };
if (isNil VARS_RESPAWN_SELECTED_POSITION) then  {
	_defaultIndex = 0;
} else {
	_defaultIndex = VAR_RESPAWN_POSITIONS findIf { _x isEqualTo VAR_RESPAWN_SELECTED_POSITION };
	_defaultIndex = [0,_defaultIndex] select { _defaultIndex >= 0 };
};

_listBox = [
	// 0) Content Type
	"LIST",

	// 1) Display Name and Tooltip
	[
		"Select Respawn Position",
		"If the position is a player, respawn near the player.<br/>If the position is a vehicle, then spawn in the vehicle if it isn't full."
	],

	// 2) Control Specific Arguments
	[
		// 0) Values to be returned
		_respawnPositions,
		_respawnNames,
		_defaultIndex,
		10
	]
];

_onConfirm = {
	params ["_diaglogValues","_arguments"];
	_diaglogValues params ["_respawnPosition"];
	VAR_RESPAWN_SELECTED_POSITION = _respawnPosition;
};

[
	"Select Rewspawn",
	[_listBox],

	// 2) On Confirm, unscheduled
	// Passed Arguments:
	// 0) Dialog Values in order of Content
	// 1) Arguments, the same ones passed in arg4 for zen_dialog_fnc_create
	_onConfirm,
	// 3) On Cancel, default: {}, unscheduled
	{}, 
	// 4) Arguments, default: []
	[]
] call zen_dialog_fnc_create;
