
#include "..\supplyCratesMacros.hpp"

params ["_crateName","_item","_amount"];

if (([_item] call BIS_fnc_itemType) isEqualTo [[],[]]) exitWith {
	// TODO: Log
};

_crate = BVAR(supplyCrates,crates) get _crateName;
_crate params ["_crateObject","_crateInventory"];
_crateInventory pushBack [_item,_amount];
