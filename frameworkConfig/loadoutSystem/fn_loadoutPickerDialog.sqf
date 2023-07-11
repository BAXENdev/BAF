
#include "\macros\loadoutAccessMacros.hpp"

params ["_unit"];

if (isNil _unit or !(_unit isKindOf "CAManBase")) exitWith { /* TODO: Debug RPT */ };

_sideName = [_unit] call BAX_fnc_factionToSideName;
_loadoutRegistry = GET_LOADOUT_REGISTRY(_sideName);

_loadoutVariables = _loadoutRegistry apply { _x#0 };
_loadoutNames = _loadoutRegistry apply { _x#1 };

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
