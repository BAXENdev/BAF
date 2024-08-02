
#include "_arsenalsMacros.hpp"

params ["_side","_object"];

if !(_side in [west,east,independent,civilian]) exitWith {
	_msg = format ["Invalid argument passed to side: %1 | Valid values are: [west,east,independent,civilian]", _side];
	DEBUG_ERR(_msg);
};
if !(_role isEqualType objNull) exitWith {
	_msg = format ["Invalid argument passed to object: %1 | Pass an object", _object];
	DEBUG_ERR(_msg);
};

_arsenalBoxes = bax_arsenals_arsenalBoxes get _side;
_arsenalBoxes pushBack _object;
