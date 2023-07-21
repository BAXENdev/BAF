
#include "..\..\macros\loadoutAccessMacros.hpp"

params ["_unit",["_factionId","",[""]]];

if !(_unit isKindOf "CAManBase") exitWith { DEBUG_RPT_FULL("Attempted to assign loadout to a non-unit"); };

if (_factionId isEqualTo "") then {
	_factionId = [_unit] call BAF_fnc_getUnitFactionId;
};
if (_factionId isEqualTo "") exitWith { DEBUG_RPT_FULL("FactionId could not be found from unit side."); };

_loadoutRegistry = GET_LOADOUT_REGISTRY(_factionId);
if !(_loadoutRegistry isEqualType []) exitWith {
	_rptMsg = format ['FactionId:"%1" doesnt exist.', param [1]];
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
		10
	]
];

_onConfirm = {
	params ["_dialogArgs", "_functionArgs"];
	_dialogArgs params ["_loadoutVariable"];
	_functionArgs params ["_unit", "_factionId"];

	DEBUG_RPT("(dialog) Assigning loadout");

	[_unit,_loadoutVariable,_factionId] call BAF_fnc_assignLoadout;
};

[
	format ["Pick Loadout [%1]", _factionId],
	[_listBox], // Content Forms
	_onConfirm,
	{},
	[_unit, _factionId]
] call zen_dialog_fnc_create;
