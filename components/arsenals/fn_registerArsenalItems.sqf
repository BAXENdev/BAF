
#include "_arsenalMacros.hpp"

params ["_side","_role","_items"];

if !(_side in [west,east,independent,civilian]) exitWith {
	_msg = format ["Invalid argument passed to side: %1 | Valid values are: [west,east,independent,civilian]", _side];
	DEBUG_ERR(_msg);
};
if !(_role isEqualType "") exitWith {
	_msg = format ["Non string argument passed to role: %1", _role];
	DEBUG_ERR(_msg);
};
if !(_items isEqualTypeAny [[], true]) exitWith {
	_msg = format ["Invalid argument passed to items: %1 | Valid values are arrays and booleans", _items];
};

_arsenalPresets = bax_arsenals_arsenals get _side;
_arsenalPresets set [_role,_items];
