
#include "_loadoutsMacros.hpp"

params ["_object"];

_actionId = _object getVariable [LOCKER_ID,nil];
if (isNil "_actionID") exitWith {};
_object removeAction _actionId;
_object setVariable [LOCKER_ID,nil];
