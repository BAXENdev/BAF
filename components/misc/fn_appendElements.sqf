
/*
 * Author: BAXENATOR
 * Appends an item or items to the array.
 * If an array is passed to _elements, each element is appended.
 * If you want to append an array, put the array in an array.
 * If an array is passed to _elements, it does not do a deep copy.
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
 * [[],"Hi"] call BAX_MISC_fnc_appendElements; Results in ["Hi"]
 * [[],["Hi"]] call BAX_MISC_fnc_appendElements; Results in ["Hi"]
 * [[],["Hi"]] call BAX_MISC_fnc_appendElements; Results in ["Hi"]
 *
 * Public: Yes
 */

#include "..\..\macros\utilityMacros.hpp"

params ["_array","_elements",["_isUnique",false]];

if !(_array isEqualType []) exitWith { DEBUG_RPT_FULL("A non-array was passed to _array."); };

if !(_elements isEqualType []) then {
	_elements = [_elements];
};

if (_isUnique) then { _elements apply { _array pushBackUnique _x; }; }
else { _array append _elements; };
