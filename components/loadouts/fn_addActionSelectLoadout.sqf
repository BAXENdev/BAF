
#include "_loadoutsMacros.hpp"

params ["_object"];

_actionID = _object getVariable [LOCKER_ID,nil];

if !(isNil "_actionID") exitWith {};

_actionID = _object addAction [
	"Select Loadout",
	{
		params ["_target","_caller","_actionId","_arguments"];

		[_caller] call bax_loadouts_fnc_dialogSelectLoadout;
	},
	[],
	1.5,
	true,
	true,
	"",
	"true",
	5,
	false,
	"",
	""
];

_object setVariable [LOCKER_ID,_actionID];
