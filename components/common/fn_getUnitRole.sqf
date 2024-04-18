
#include "_commonMacros.hpp"

params ["_unit"];

if !(isMultiplayer) exitWith {
	// return
	"";
};

_role = roleDescription _unit;
_role = (_role splitString "@") select 0;

// return
_role;
