
#include "..\_toolsMacros.hpp"

params ["_arsenals","_loadouts","_mapMarkers","_radios","_supplyCrates"];

_defaultText = [] call bax_tools_fnc_getCfgBax;

if (isServer) then {
	copyToClipboard _defaultText;
	[objNull,"CfgBax copied to clipboard"] call BIS_fnc_showCuratorFeedbackMessage;
};

_editBox = [
	// 0) Content Type
	// Alternative Types: EDIT:MULTI & EDIT:CODE
	// EDIT is single line and EDIT:MULTI (EDIT:CODE) is multiline
	// EDIT:CODE performs code autocompletion
	"EDIT:MULTI",

	// 1) Display Name and Tooltip
	"CfgBax", // or  ["Title", "Tooltip"],

	// 2) Control Specific Arguments
	[
		// 0) Default Text
		_defaultText,

		// 1) Sanitizing Function, Code Function that accepts a string and returns a string
		{ params ["_inputText"]; _inputText; },

		// 2) Box Height in line count, only available for EDIT:MULTI & EDIT:CODE
		35
	],

	// 3) Force Default, default: false
	true
];

[
	// 0) Title
	"Exported CfgBax",
	
	// 1) Content Array of Zen Dialogs
	[_editBox],

	// 2) On Confirm, unscheduled
	// Passed Arguments:
	// 0) Dialog Values in order of Content
	// 1) Arguments, the same ones passed in arg4 for zen_dialog_fnc_create
	{
		params ["_dialogValues","_args"];
		_dialogValues params ["_param1"];
		_args params ["_arg1"];
	},

	// 3) On Cancel, default: {}, unscheduled
	{}, 

	// 4) Arguments, default: []
	[]

] call zen_dialog_fnc_create;