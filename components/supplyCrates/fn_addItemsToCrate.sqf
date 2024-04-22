
#include "_supplyCratesMacros.hpp"

/*
	_newItemsArray:
		array of itemArray: [ITEM_CLASS,AMOUNT]
		Ex: [["ACE_bloodIV",10]]
*/
params ["_side","_crateName","_newItemsArray"];

{
	_x params ["_itemClass","_amount"];
	if ((_itemClass call BIS_fnc_itemType) isEqualTo [[],[]]) then {
		_msg = format ["Item class %1 does not exist.", _itemClass];
		DEBUG_ERR(_msg);
		_newItemsArray deleteAt _forEachIndex;
	}
} forEachReversed _newItemsArray;

_crateArray = bax_supplyCrates_crates get _side get _crateName;
_crateArray params ["_objectClass","_crateItemsArray"];
_crateItemsArray append _newItemsArray;
