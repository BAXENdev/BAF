
#include "..\..\macros\loadoutAccessMacros.hpp"

params ["_positionASL","_object"];

private ["_crateArg"];

_isCrate = [_object] call BAF_fnc_objectHasInventory;
if (_isCrate) then {
	_crateArg = _object;
} else {
	_crateArg = _positionASL;
};

_factionIds = GET_REGISTRY_TAGS();
if (_factionIds isEqualTo []) exitWith { /* TODO: Handle Error */ }; 
_factionNames = _factionIds apply { toUpper _x; };

_listBox = [
	"LIST",
	"Select Faction ID",
	[
		_factionIds,
		_factionNames,
		0,
		10
	]
];

_function = {
	params ["_dialogArgs","_arguments"];
	_dialogArgs params ["_factionId"];
	_arguments params ["_crateArg"];

	[_crateArg,_factionId] call BAF_fnc_dialogCreateCrateSelection;
};

[
	"Select Faction ID",
	[_listBox],
	_function,
	{},
	[_crateArg]
] call zen_dialog_fnc_create;
