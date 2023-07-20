
#include "..\..\macros\loadoutAccessMacros.hpp"

params ["_crateObject",["_crateSuffix","",[""]],["_factionId","",[""]]];

_isCrate = [_crateObject] call BAF_fnc_objectHasInventory;

if !(_isCrate) exitWith { DEBUG_RPT("(loadout) Passed an object without an inventory to assignCrate."); };

if (_factionId isEqualTo "") exitWith { DEBUG_RPT("(loadout) Empty faction id passed to assignCrate."); };

if (_crateSuffix isEqualTo "") exitWith { DEBUG_RPT("(loadout) Empty crate suffix passed to assignCrate."); };
_crateArray = GET_CRATE(_crateSuffix,_factionId);
if !(_crateArray isEqualType []) exitWith {
	_rptMsg = format ["(loadout) Crate variable [%1] is not initialized.",GET_CRATE_VARIABLE(_crateSuffix,_factionId)];
	DEBUG_RPT(_rptMsg);
};

clearBackpackCargoGlobal _crateObject;
clearItemCargoGlobal _crateObject;
clearMagazineCargoGlobal _crateObject;
clearWeaponCargoGlobal _crateObject;

{
	_itemName = _x#0;
	if ("Backpack" in (_itemName call BIS_fnc_itemType)) then {
		_crateObject addBackpackCargoGlobal _x;
	} else {
		_crateObject addItemCargoGlobal _x;
	};

} forEach _crateArray;
