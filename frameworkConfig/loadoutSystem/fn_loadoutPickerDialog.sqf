
#include "..\..\macros\loadoutAccessMacros.hpp"

params ["_unit",["_factionID","",[""]]];

if !(_unit isKindOf "CAManBase") exitWith { /* TODO: Debug RPT */ };

if (_factionID isEqualTo "") then {
	_factionID = [_unit] call BAF_fnc_unitSideToFactionID;
}
if (_factionID isEqualTo "") exitWith { /* TODO: Debug RPT */ };

_loadoutRegistry = GET_LOADOUT_REGISTRY(_factionID);
_loadoutVariables = _loadoutRegistry apply { _x#0; }

_listBox = [
	"LIST",
	"Loadouts:",
	[
		_loadoutVariables,
		_loadoutNames
	],
	0,
	5
];

_onConfirm = {
	params ["_dialogArgs", "_functionArgs"];
	_dialogArgs params ["_loadoutVariable"];
	_functionArgs params ["_unit", "_sideName"];

	// TODO: Assign Loadout
};

[
	"Pick Loadout",
	[], // Content Forms
	_onConfirm,
	{},
	[_unit, _sideName]
] call zen_dialog_fnc_create;
