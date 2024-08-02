
#include "_arsenalsMacros.hpp"

params ["_role"];

_side = side group player;
if !(_role in (bax_arsenals_arsenalLists get _side)) then {
	_role = VARS_DEFAULT;
	if !(_role in (bax_arsenals_arsenalLists get _side)) exitWith {
		_arsenalObjects = bax_arsenals_arsenalBoxes get _side;
		{
			[_x] call bax_arsenals_fnc_removeArsenal;	
		} forEach _arsenalObjects;
	};
};

player setVariable [VARS_ARSENAL_ROLE, _role, true];

_arsenalObjects = bax_arsenals_arsenalBoxes get _side;
{
	[_x] call bax_arsenals_fnc_addArsenal;	
} forEach _arsenalObjects;