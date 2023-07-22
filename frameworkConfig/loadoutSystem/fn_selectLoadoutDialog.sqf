
#include "..\..\macros\loadoutAccessMacros.hpp"

params ["_unit"];

if !(_unit isKindOf "CAManBase") exitWith { DEBUG_RPT_FULL("Attempted to assign loadout to a non-unit"); };

_factionId = [_unit] call BAF_fnc_getUnitFactionId;
if !(_factionId in GET_REGISTRY_TAGS()) exitWith {
	_rptMsg = "FactionID has not been assigned to unit.";
	["BafWarning",[_rptMsg]] call BIS_fnc_showNotification;
	DEBUG_RPT_FULL(_rptMsg);
};

private ["_loadoutSuffixes","_loadoutNames","_title"];

_classSuffix = GETVAR(_unit,UNIT_CLASS_SUFFIX,"");

if !(_classSuffix isEqualTo "") then {
	_classBaf = GET_CLASS(_classSuffix,_factionId);
	_classLoadouts = GET_CLASS_LOADOUTS(_classBaf);
	_loadoutSuffixes = _classLoadouts apply { _x#0; };
	_loadoutNames = _classLoadouts apply { _x#1; };
	_title = format ["Pick Loadout [%1 : %2]",_factionId,_classSuffix];
} else {
	_loadoutRegistry = GET_LOADOUT_REGISTRY(_factionId);
	_loadoutSuffixes = _loadoutRegistry apply { _x#0; };
	_loadoutNames = _loadoutRegistry apply { _x#1; };
	
	_title = format ["Pick Loadout [%1]",_factionId];
};

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
	_functionArgs params ["_unit", "_factionId"];

	[_unit,_loadoutSuffix,_factionId] call BAF_fnc_assignLoadout;
};

[
	_title,
	[_listBox], // Content Forms
	_onConfirm,
	{},
	[_unit, _factionId]
] call zen_dialog_fnc_create;
