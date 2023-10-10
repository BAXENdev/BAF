
/*
 * Author: BAXENATOR
 * adds an item to a crate.
 *
 * Arguments:
 * 0: _crateArray
 * 1: _itemName Transport Item Name
 * 2: _count
 *
 * Return Value:
 * -
 *
 * Example:
 * [baf_crate_blufor_supply,"ACE_Vector",3] call BAF_fnc_addItemToCrate;
 *
 * Public: Yes
 */

#include "..\..\..\macros\loadoutAccessMacros.hpp"

params ["_crateSuffix","_itemName","_count","_factionId"];

_crateArray = GET_CRATE(_crateSuffix,_factionId);
if !(_crateArray isEqualType []) exitWith {
	_rptMsg = format ["%1 is not initialized.",GET_CRATE_VARIABLE(_crateSuffix,_factionId)];
	DEBUG_RPT_FULL(_rptMsg);
};

_itemTypes = [_itemName] call BIS_fnc_itemType;
if (_itemTypes isEqualTo ["",""]) exitWith {
	_rptMsg = format ["Attempted to add item %1 to crate.", _itemName];
	DEBUG_RPT_FULL(_rptMsg);
};

_addedItem = [_itemName, _count];
_crateArray pushBack _addedItem;
