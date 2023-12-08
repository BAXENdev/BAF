
#include "..\..\..\macros\loadoutMacros.hpp"

params ["_object"];

// TODO
_actionID = GETVAR(_object,VARS_LOCKER_ACTION_ID,nil);

if !(isNil "_actionID") exitWith {};

_actionID = _object addAction [
	"Select Loadout",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];
		
		_factionID = GETVAR(_caller,VARS_FACTION_ID,"");
		if ("_factionID" isEqualTo "") exitWith {
			["BaxWarning",["No faction given. Ask Zeus to assign loadout for you,"]] call BIS_fnc_showNotification;
		};

		_classSuffix = GETVAR(_caller,VARS_CLASS_SUFFIX,"");

		[_caller,_factionID,_classSuffix] call BAX_LOADOUTS_fnc_dialogLoadoutSelectLoadout;
	},
	nil,
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

SETVAR(_object,VARS_LOCKER_ACTION_ID,_actionID);
