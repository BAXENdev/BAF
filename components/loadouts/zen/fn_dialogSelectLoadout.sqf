
#include "..\..\..\macros\loadoutAccessMacros.hpp"

params ["_unit"];

if !(_unit isKindOf "Man") exitWith { DEBUG_RPT_FULL("Attempted to assign loadout to a non-unit"); };

_factionId = [_unit] call BAF_fnc_getUnitFactionID;
if !(_factionId in VAR_FACTION_REGISTRY) exitWith {
	_rptMsg = "FactionID has not been assigned to unit.";
	["BafWarning",[_rptMsg]] call BIS_fnc_showNotification;
	DEBUG_RPT_FULL(_rptMsg);
};

private ["_loadoutSuffixes","_loadoutNames","_title"];

_loadoutRegistry = GET_LOADOUT_REGISTRY(_factionId);
_loadoutSuffixes = _loadoutRegistry apply { _x#0; };
_loadoutNames = _loadoutRegistry apply { _x#1; };

_title = format ["Pick Loadout [%1]",_factionId];

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
