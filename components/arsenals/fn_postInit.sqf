
#include "_arsenalMacros.hpp"

if !(hasInterface) exitWith {};

_arsenalObjects = bax_arsenals_arsenalObjects get _side;
{
	[_x,_role] call bax_arsenals_fnc_initArsenal;	
} forEach _arsenalObjects;
