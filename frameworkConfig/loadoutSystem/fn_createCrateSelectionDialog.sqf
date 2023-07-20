
#include "..\..\macros\loadoutAccessMacros.hpp"

params ["_crateArg","_factionId"];
DEBUG_RPT_FULL(str _this);

_crateRegistry = GET_CRATE_REGISTRY(_factionId);
if !(_crateRegistry isEqualType []) exitWith { /* TODO: Handle Error */ };

_crateSuffixes = _crateRegistry apply { _x#0; };
_crateNames = _crateRegistry apply { _x#1; };

_title = format ["Select Crate [%1]",_factionId];;

_listBox = [
	"LIST",
	_title,
	[
		_crateSuffixes,
		_crateNames,
		0,
		10
	]
];

_function = {
	DEBUG_RPT_FULL(str _this);
	params ["_dialogArgs","_arguments"];
	_dialogArgs params ["_crateSuffix"];
	_arguments params ["_crateArg","_factionId"];

	if (_crateArg isEqualType []) then {
		_crateArg = "I_supplyCrate_F" createVehicle _crateArg;
	};

	[_crateArg,_crateSuffix,_factionId] call BAF_fnc_assignCrate;
};

[
	_title,
	[_listBox],
	_function,
	{},
	[_crateArg,_factionId]
] call zen_dialog_fnc_create;

