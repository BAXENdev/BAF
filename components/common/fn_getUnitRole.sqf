
#include "_commonMacros.hpp"

params ["_unit"];

_role = _unit getVariable [VARS_ROLE, ""];

if !(_role isEqualTo "") exitWith {
	// return
	_role;
};

if !(isMultiplayer) exitWith {
	// return
	VARS_DEFAULT;
};

_role = ((roleDescription _unit) splitString "@") select 0;
// return
_role;
