
#include "..\..\..\macros\loadoutAccessMacros.hpp"

params ["_unit"];

if !(_unit isKindOf "Man") exitWith { DEBUG_RPT_FULL("Attempted to assign loadout to a non-unit"); };

_factionID = [_unit] call BAF_fnc_getUnitFactionID;
if !(_factionID in VAR_FACTION_REGISTRY) exitWith {
	_rptMsg = "FactionID has not been assigned to unit.";
	["BafWarning",[_rptMsg]] call BIS_fnc_showNotification;
	DEBUG_RPT_FULL(_rptMsg);
};

_classRegistry = GET_CLASS_REGISTRY(_factionID);
// TODO: Do I need to test if this isNil?
// If the factionID exists, this should be gauranteed to return not-nil
if (_classRegistry isEqualTo []) exitWith {
	_rptMsg = "Unit's assigned faction has no classes.";
	["BafWarning",[_rptMsg]] call BIS_fnc_showNotification;
	DEBUG_RPT_FULL(_rptMsg);
};

// TODO: The selected value could be the loadoutSuffixes from the class instead of the classSuffix
_title = format ["Pick Class [%1]",_factionID];
_classSuffixes = _classRegistry apply { _x#0; };
_classNames = _classRegistry apply { _x#1 };

_listBox = [
	"LIST",
	"Classes:",
	[
		_classSuffixes,
		_classNames,
		0,
		10
	]
];

_onConfirm = {
	params ["_dialogArgs", "_functionArgs"];
	_dialogArgs params ["_classSuffix"];
	_functionArgs params ["_unit", "_factionID"];

	// [_unit,_loadoutSuffix,_factionID] call BAF_fnc_assignLoadout;

	_classArray = GET_CLASS(_classSuffix,_factionID);
	_loadoutRegistry = GET_CLASS_LOADOUTS(_classArray);
	_loadoutSuffixes = _loadoutRegistry apply { _x#0; };
	_loadoutNames = _loadoutRegistry apply { _x#1; };
	_title = format ["Pick Loadout [%1 : %2]",_factionID,GET_CLASS_NAME(GET_CLASS(_classSuffix,_factionID))];

	_listBox = [
		"LIST",
		"Loadouts:",
		[
			_loadoutSuffixes,
			_loadoutNames,
			0,
			10
		]
	];

	_onConfirm = {
		params ["_dialogArgs", "_functionArgs"];
		_dialogArgs params ["_loadoutSuffix"];
		_functionArgs params ["_unit", "_factionID", "_classSuffix"];

		[_unit,_loadoutSuffix,_factionID,_classSuffix] call BAF_fnc_assignLoadout;
	};

	[
		_title,
		[_listBox],
		_onConfirm,
		{},
		[_unit, _factionID, _classSuffix]
	] call zen_dialog_fnc_create;
};

[
	_title,
	[_listBox],
	_onConfirm,
	{},
	[_unit, _factionID]
] call zen_dialog_fnc_create;
