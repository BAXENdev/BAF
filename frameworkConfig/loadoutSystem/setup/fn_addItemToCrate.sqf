
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

params ["_crateArray", "_itemName", "_count"];

// TODO: Check for existance
// TODO: Check for type mag
// TODO: Check for transport item name

_addedItem = [_itemName, _count];
_crateArray pushBack _addedItem;
