
#include "..\..\..\macros\loadoutAccessMacros.hpp"

params ["_crateArg","_factionId"];

_crateRegistry = GET_CRATE_REGISTRY(_factionID);
// if (isNil "_crateRegistry") exitWith { DEBUG_RPT_FULL("Passed faction ID """ + _factionID); };
if !(_crateRegistry isEqualType []) exitWith {};

_crateSuffixes = _crateRegistry apply { _x#0; };
_crateNames = _crateRegistry apply { _x#1; };

_title = format ["Select Crate [%1]",_factionID];;

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

_paradrop = [
	// 0) Content Type
	"CHECKBOX",

	// 1) Display Name and Tooltip
	"Do Paradrop", // or  ["Title", "Tooltip"],

	// 2) Control Specific Arguments - Default Control State
	true
];

_function = {
	params ["_dialogArgs","_arguments"];
	_dialogArgs params ["_crateSuffix","_paradrop"];
	_arguments params ["_crateArg","_factionID"];

	if (_crateArg isEqualType []) then {
		_crateArg = "I_supplyCrate_F" createVehicle _crateArg;
		allCurators apply {
			_x addCuratorEditableObjects [[_crateArg], true];
		};
	};

	[_crateArg,_crateSuffix,_factionID] call BAX_loadouts_fnc_assignCrate;
	if (_paradrop) then {
		[] // TODO: Add paradrop code
	};
};

[
	_title,
	[_listBox],
	_function,
	{},
	[_crateArg,_factionID]
] call zen_dialog_fnc_create;
