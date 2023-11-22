
#include "..\..\..\macros\loadoutAccessMacros.hpp"

params ["_posASL","_object"];

private ["_crateArg"];

if !(isNull _object) then {
	_isCrate = [_object] call BAX_MISC_fnc_objectHasInventory;
	if !(_isCrate) exitWith {
		[objNull,"Place on an object with an inventory."] call BIS_fnc_showCuratorFeedbackMessage;
	};
	_crateArg = _object;
} else {
	_crateArg = _posASL;
};

_factionIDs = VAR_FACTION_REGISTRY;
if (_factionIDs isEqualTo []) exitWith {
	[objNull,"There are no faction IDs available."] call BIS_fnc_showCuratorFeedbackMessage;
}; 
_factionNames = _factionIDs apply { toUpper _x; };

_listBox = [
	"LIST",
	"Select Faction ID",
	[
		_factionIDs,
		_factionNames,
		0,
		10
	]
];

_function = {
	params ["_dialogArgs","_arguments"];
	_dialogArgs params ["_factionID"];
	_arguments params ["_crateArg"];

	[_crateArg,_factionID] call BAX_loadouts_fnc_dialogCreateCrateSelection;
};

[
	"Select Faction ID",
	[_listBox],
	_function,
	{},
	[_crateArg]
] call zen_dialog_fnc_create;
