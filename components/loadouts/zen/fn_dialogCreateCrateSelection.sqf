
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

// _addMarker = [
// 	// 0) Content Type
// 	"CHECKBOX",

// 	// 1) Display Name and Tooltip
// 	"Add Marker", // or  ["Title", "Tooltip"],

// 	// 2) Control Specific Arguments - Default Control State
// 	true
// ];

// _markers = [
// 	// 0) Content Type
// 	"LIST",

// 	// 1) Display Name and Tooltip
// 	["Select Marker","Adds a grenade to the top as a marker."], // or  ["Title", "Tooltip"],

// 	// 2) Control Specific Arguments
// 	[
// 		// 0) Values to be returned
// 		[0,1,2,3,4,5,6,7,8,9,10,11],

// 		// 1) Pretty Names for Corresponding Return Value
// 		// Pretty Names can be a list of strings or a list complex data 
// 		[
// 			"None",
// 			"Smoke (White)",
// 			"Smoke (Yellow)",
// 			"Smoke (Green)",
// 			"Smoke (Red)",
// 			"Smoke (Blue)",
// 			"Smoke (Purple)",
// 			"Smoke (Orange)",
// 			"Flare (White_",
// 			"Flare (Yellow)",
// 			"FlarE (Green)",
// 			"Flare (Red)"
// 		],

// 		// 2) Default Index
// 		0, // TODO: Determine if its 0 index

// 		// 3) List Height
// 		5
// 	]
// ];

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

	[_crateArg,_crateSuffix,_factionID] call BAF_fnc_assignCrate;
	if (_paradrop) then {
		[]
	};
};

[
	_title,
	[_listBox],
	_function,
	{},
	[_crateArg,_factionID]
] call zen_dialog_fnc_create;
