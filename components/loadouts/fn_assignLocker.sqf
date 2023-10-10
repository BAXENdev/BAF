
#include "..\..\macros\utilityMacros.hpp"

/*
 * Author: BAXENATOR
 * Turns an object in to a loadout locker for changing loadouts.
 * Locker will display loadouts from the assigned class, or from
 * the faction if no class is assigned.
 *
 * Arguments:
 * 0: _object
 * 3: _addArsenal
 * 
 * Return Value:
 * - 
 *
 * Example:
 * [_this,"blufor"] call baf_fnc_assignLocker; // Locker
 * [_this,"blufor",1,true] call baf_fnc_assignLocker; // Locker with generated arsenal
 *
 * Public: Yes
 */

params ["_object"];

_object addAction
[
	"Change Loadout",	// title
	{
		params ["_target", "_caller", "_actionId", "_arguments"]; // script
		[_caller] call BAF_fnc_dialogSelectLoadout;
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	true,		// hideOnUse
	"",			// shortcut
	"true",		// condition
	50,			// radius
	false,		// unconscious
	"",			// selection
	""			// memoryPoint
];
