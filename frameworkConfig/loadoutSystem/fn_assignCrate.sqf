
/*
 * Author: BAXENATOR
 * Assigns a crate inventory to the crateObject. 
 * This method will resize the crate capacity if it is run on the server.
 * The method will not enforce running on the server
 * 
 * Arguments:
 * 0: _crateObject
 * 1: _cratesuffix
 * 2: _factionId
 * 
 * Return Value:
 * -
 *
 * Example:
 * [crate1,"supply","blufor"] call baf_fnc_assignLoadout;
 *
 * Public: Yes
 */

#include "..\..\macros\loadoutAccessMacros.hpp"

params ["_crateObject",["_crateSuffix","",[""]],["_factionId","",[""]]];

_isCrate = [_crateObject] call BAF_fnc_objectHasInventory;

if !(_isCrate) exitWith { DEBUG_RPT_FULL("Passed an object without an inventory to assignCrate."); };

if (_factionId isEqualTo "") exitWith { DEBUG_RPT_FULL("Empty faction id passed to assignCrate."); };

if (_crateSuffix isEqualTo "") exitWith { DEBUG_RPT_FULL("Empty crate suffix passed to assignCrate."); };
_crateArray = GET_CRATE(_crateSuffix,_factionId);
if !(_crateArray isEqualType []) exitWith {
	_rptMsg = format ["Crate variable [%1] is not initialized.",GET_CRATE_VARIABLE(_crateSuffix,_factionId)];
	DEBUG_RPT_FULL(_rptMsg);
};

clearBackpackCargoGlobal _crateObject;
clearItemCargoGlobal _crateObject;
clearMagazineCargoGlobal _crateObject;
clearWeaponCargoGlobal _crateObject;

{
	_itemName = _x#0;
	if ("Backpack" in ([_itemName] call BIS_fnc_itemType)) then {
		_crateObject addBackpackCargoGlobal _x;
	} else {
		_crateObject addItemCargoGlobal _x;
	};

} forEach _crateArray;

_load = loadAbs _crateObject;
_maxLoad = maxLoad _crateObject;
if (isServer and (_load >= (floor (_maxLoad * 0.9)))) then { 
	_crateObject setMaxLoad (floor (_load * 1.2));
};
