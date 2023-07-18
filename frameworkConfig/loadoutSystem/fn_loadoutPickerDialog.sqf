
#include "..\..\macros\loadoutAccessMacros.hpp"

params ["_unit",["_factionID","",[""]]];

if !(_unit isKindOf "CAManBase") exitWith { DEBUG_RPT_FULL("Attempted to assign loadout to a non-unit"); };

if (_factionID isEqualTo "") then {
	_factionID = [_unit] call BAF_fnc_unitSideToFactionID;
};
if (_factionID isEqualTo "") exitWith { DEBUG_RPT_FULL("FactionID could not be found from unit side."); };

_loadoutRegistry = GET_LOADOUT_REGISTRY(_factionID);
if (_loadoutRegistry isEqualTo 0) exitWith {
	_rptMsg = format ['FactionID:"%1" doesnt exist.', param [1]];
	DEBUG_RPT_FULL(_rptMsg);
};

_loadoutVariables = _loadoutRegistry apply { _x#0; };
_loadoutNames = _loadoutRegistry apply { _x#1; };

_listBox = [
	"LIST",
	"Loadouts:",
	[
		_loadoutVariables,
		_loadoutNames,
		0,
		5
	]
];

_onConfirm = {
	params ["_dialogArgs", "_functionArgs"];
	_dialogArgs params ["_loadoutVariable"];
	_functionArgs params ["_unit", "_factionID"];

	DEBUG_RPT("(dialog) Assigning loadout");

	[_unit,_loadoutVariable,_factionID] call BAF_fnc_assignLoadout;
};

[
	"Pick Loadout",
	[_listBox], // Content Forms
	_onConfirm,
	{},
	[_unit, _factionID]
] call zen_dialog_fnc_create;
