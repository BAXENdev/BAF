
/*
 * Author: BAXENATOR
 * Appends an item or items to the array.
 * If an array is passed to _elements, each element is appended.
 *
 * Arguments:
 * 0: _array
 * 1: _elements [any] 
 * 2: _isUnique
 *
 * Return Value:
 * -
 *
 * Example:
 * [baf_crate_blufor_supply,"ACE_Vector",3] call BAF_fnc_addItemToCrate;
 *
 * Public: Yes
 */

#include "..\..\macros\utilityMacros.hpp"

params ["_array","_elements",["_isUnique",false]];

if !(_array isKindOf []) exitWith { DEBUG_RPT_FULL("A non-array was passed to _array."); };

if !(_elements isKindOf []) then {
	_elements = [_elements];
};

if (_isUnique) then { _elements apply { _array pushBackUnique _x; }; }
else { _array append _elements; };
