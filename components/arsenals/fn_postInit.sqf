
#include "_arsenalsMacros.hpp"

if !(hasInterface) exitWith {};

_role = [player] call bax_common_fnc_getUnitRole;

[_role] call bax_arsenals_fnc_initArsenals;
